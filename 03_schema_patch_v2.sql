-- =============================================================
-- SIGNAL Dashboard — Schema Patch v2
-- Run AFTER 01_schema.sql and 02_seed_peri.sql.
-- Safe to re-run (uses IF NOT EXISTS / DEFAULT).
-- Does NOT touch any existing data.
-- =============================================================

-- Mark tasks added by you (off-plan posts) so they're visually distinct
alter table signal_tasks
  add column if not exists is_off_plan boolean not null default false;

-- Existing seeded tasks are part of the plan
update signal_tasks set is_off_plan = false where is_off_plan is null;

-- Helpful index for filtering on/off-plan
create index if not exists idx_signal_tasks_off_plan on signal_tasks (is_off_plan);
