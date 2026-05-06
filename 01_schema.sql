-- =============================================================
-- SIGNAL Dashboard — Supabase Schema
-- Run this in your Supabase SQL Editor (Dashboard > SQL Editor > New Query)
-- =============================================================

-- ----------------------------
-- TASKS TABLE
-- One row per task per day per owner.
-- Built so adding Erin / Aiden later is just inserting more rows.
-- ----------------------------
create table if not exists signal_tasks (
  id              uuid primary key default gen_random_uuid(),
  day_number      int not null,                  -- 1..30
  task_date       date not null,                 -- May 4 = Day 1
  owner           text not null default 'peri',  -- 'peri' | 'erin' | 'aiden'
  channel         text not null,                 -- 'tiktok' | 'linkedin' | 'youtube' | 'instagram' | 'facebook' | 'reddit' | 'ops' | 'production'
  pillar          text,                          -- 'peri_wisdom' | 'scoring_live' | 'myth_busters' | 'resume_roasts' | 'student_pov' | 'parent_talk' | null
  task_type       text not null default 'post',  -- 'post' | 'batch_shoot' | 'review' | 'standup' | 'other'
  title           text not null,                 -- short title shown in lists
  hook            text,
  body            text,                          -- full script body
  on_screen_text  text,
  caption         text,
  hashtags        text,
  cta             text,

  -- Production pipeline (booleans for simple checkbox UI)
  status_script_ready boolean not null default false,
  status_filmed       boolean not null default false,
  status_edited       boolean not null default false,
  status_uploaded     boolean not null default false,
  status_posted       boolean not null default false,

  -- Free-form
  asset_links     jsonb not null default '{}'::jsonb,  -- { "drive": "...", "tiktok_url": "...", "filmed_file": "..." }
  notes           text,
  posted_at       timestamptz,

  -- Meta
  created_at      timestamptz not null default now(),
  updated_at      timestamptz not null default now()
);

-- Helpful indexes
create index if not exists idx_signal_tasks_date    on signal_tasks (task_date);
create index if not exists idx_signal_tasks_owner   on signal_tasks (owner);
create index if not exists idx_signal_tasks_channel on signal_tasks (channel);
create index if not exists idx_signal_tasks_day     on signal_tasks (day_number);

-- Auto-update updated_at on every row update
create or replace function signal_tasks_set_updated_at()
returns trigger as $$
begin
  new.updated_at = now();
  return new;
end;
$$ language plpgsql;

drop trigger if exists trg_signal_tasks_updated_at on signal_tasks;
create trigger trg_signal_tasks_updated_at
before update on signal_tasks
for each row execute function signal_tasks_set_updated_at();

-- ----------------------------
-- ROW-LEVEL SECURITY
-- For Month 1 the dashboard is single-user (you).
-- Simplest workable setup: enable RLS, allow the anon key full access.
-- When you add team logins, swap these for auth.uid()-based policies.
-- ----------------------------
alter table signal_tasks enable row level security;

drop policy if exists "anon_full_access" on signal_tasks;
create policy "anon_full_access"
  on signal_tasks
  for all
  to anon
  using (true)
  with check (true);

-- ----------------------------
-- VIEW: today's tasks
-- ----------------------------
create or replace view v_signal_today as
select * from signal_tasks
where task_date = current_date
order by channel, title;

-- ----------------------------
-- VIEW: pipeline status summary
-- ----------------------------
create or replace view v_signal_pipeline as
select
  day_number,
  task_date,
  owner,
  channel,
  pillar,
  title,
  case
    when status_posted    then 'posted'
    when status_uploaded  then 'uploaded'
    when status_edited    then 'edited'
    when status_filmed    then 'filmed'
    when status_script_ready then 'script_ready'
    else 'not_started'
  end as stage
from signal_tasks
order by day_number, channel;
