# SIGNAL Dashboard — Setup Guide

A single-page dashboard that turns Erin's 30-day plan into something you can run from one screen.
Connects to your Supabase project. Pre-loaded with content for Peri and Erin.

> **Team members (Erin, Aiden):** the live dashboard is at the GitHub Pages URL Peri shared with you. Open it, paste the Supabase URL + anon key Peri sent privately, click Connect. Once you're in, use the **"Viewing"** dropdown top-right to switch between Peri / Erin / Everyone — your choice persists on that device. You only paste keys once per device. Don't commit your keys to this repo.

## What you get

**Five views, one screen.**

- **Today** — opens to today's date. Every script field (hook, body, caption, hashtags, etc.) is editable inline — make changes, they save automatically. Each field has its own copy button. Below the script: 5-step pipeline (Script Ready → Filmed → Edited → Uploaded → Posted), Drive folder URL, posted URL, and a notes field.
- **Week** — 7-day grid showing what's coming. Click any day to jump to it.
- **Month** — full 30-day calendar grid (Sun–Sat layout). Posted tasks turn green. Off-plan additions are flagged. Click any day to drop into it.
- **Status** — linear monthly status table. Each row is a day, each column is a channel (TikTok / LinkedIn / YouTube / Production / Other). Cells show ✓ posted, ◐ in flight, or ○ not started. The contact-sheet view of your month.
- **Pipeline** — every task with stage badge, filterable by channel, stage, or planned/off-plan. Friday afternoon, filter by "Filmed but not Posted" and you've got your weekend cleanup list.

**Plus an Add task button** — top-right of any view. Logs an off-plan post (the Sunday TikTok you riffed without a script) into the right day. Off-plan tasks get a purple badge so when you look back you can tell what was scripted vs. spontaneous.

Everything saves to Supabase the moment you click. Open it on your laptop, your phone, your iPad — same data everywhere.

---

## Setup (15 minutes, one time)

### Step 1 — Run the schema in Supabase

1. Open your Supabase project → **SQL Editor** → **New query**.
2. Paste the entire contents of `01_schema.sql`. Click **Run**.

### Step 2 — Load Peri's content

1. **New query**.
2. Paste `02_seed_peri.sql`. Click **Run**.
3. You should see "Success. 49 rows affected."

### Step 3 — Apply the v2 patch (adds off-plan support)

1. **New query**.
2. Paste `03_schema_patch_v2.sql`. Click **Run**.
3. Adds an `is_off_plan` column. Non-destructive — your existing data is untouched. Safe to re-run.

### Step 4 — Load Erin's content

1. **New query**.
2. Paste `04_seed_erin.sql`. Click **Run**.
3. You should see "Success. ~110 rows affected." Re-runnable: it wipes Erin's rows first.

### Step 5 — Get your Supabase credentials

Settings → API. Copy:
- **Project URL** — `https://xxxxxxxxxx.supabase.co`
- **anon public key** — long string starting with `eyJ...`

⚠️ Use the **anon** key, NOT the `service_role` key.

### Step 6 — Open the dashboard

1. Double-click `dashboard.html` (or open the GitHub Pages URL).
2. First time only: paste your URL and anon key. Click Connect.
3. Pick who you are from the **"Viewing"** dropdown top-right (Peri or Erin). Your choice saves automatically.
4. Done. Bookmark it.

---

## What's new in v3 (multi-owner)

- **Erin's full task list loaded** — 109 tasks across LinkedIn, Facebook, WRN Company, Instagram (Reels + 30 Stories), Reddit (4 long-form posts), and ops (daily metrics, Friday reviews, Monday standups, ad management milestones).
- **"Viewing" picker** in the header — toggle between Peri / Erin / Everyone. Default is whoever each device picked last.
- **Owner badges** — when viewing "Everyone," each card and grid cell shows whose task it is (orange for Peri, teal for Erin).
- **Status view adapts** — when viewing Erin, shows her relevant channel columns (Instagram, Facebook, Reddit, Ops) instead of Peri's (Production, etc).
- **Off-plan tasks** auto-file under whoever's currently viewing — Erin adds an off-plan post, it goes under her name.

## What's new in v2 (vs. v1)

- **Month view** — 30-day calendar grid
- **Status view** — linear day-by-day status table with channel columns
- **Inline editing** — every script field is now an editable textarea. Edits auto-save.
- **Add task button** — log off-plan posts into any day
- **Off-plan flag** — purple badge + left border on cards/cells/pipeline rows for tasks you added
- **Delete button** — only on off-plan tasks (planned tasks can't be deleted, only edited)

---

## Important notes about editing

**Edits are destructive.** If you change Day 3's caption, the original is overwritten. That matches your stated workflow ("my record should reflect what I actually posted") — but if you ever want to recover an original script, pull it from Erin's plan document.

**Auto-save is debounced 700ms after you stop typing.** No "Save" button. The "Saved" indicator at the bottom-right confirms each save. If you close the tab mid-typing, the last 700ms might not save — but in practice you won't notice.

**Adding fields that started empty.** If a task has no caption originally (e.g. a YouTube row), you'll see a "+ Caption" button under the script sections. Click it and a fresh editable field appears.

---

## Daily workflow

**Morning:** open dashboard → Today view shows today's tasks.

**Filming:**
1. Edit the script if you want. Click "Copy" on each field as you need it.
2. Film → check **Filmed**.
3. Edit → check **Edited**.
4. Upload to Drive → paste URL, check **Uploaded**.
5. Post → paste posted URL, check **Posted**.

**Off-plan post:** click **+ Add task** top-right. Pick the date and channel. Title is required, everything else optional. Hit Add.

**End of week:** Pipeline view → filter by stage = "Filmed" or "Edited". That's your "ship before Friday" list.

**Weekly check:** Status view → see the whole month at a glance. Empty cells where you expected content tell you what fell through.

---

## Adding Erin and Aiden later

Schema is ready. To add them:

1. Insert tasks with `owner = 'erin'` or `owner = 'aiden'` instead of `'peri'`.
2. In `dashboard.html`, find `loadAllTasks()` (~line 200). Change `owner=eq.peri` to `owner=in.(peri,erin,aiden)` to load all three.
3. Optionally add an owner filter dropdown.

The status checkboxes, notes, asset links — all work identically across owners. No schema changes needed.

---

## Troubleshooting

**"Could not load tasks"** — SQL hasn't been run yet. Run all three SQL files in order.

**Saves aren't persisting** — open DevTools → Network tab. PATCH requests should return 200. If 401/403, re-run `01_schema.sql` (RLS policy didn't apply).

**Want to wipe and reseed** — `delete from signal_tasks where owner = 'peri';` then re-run `02_seed_peri.sql` and `03_schema_patch_v2.sql`.

**Test with a different "today"** — edit `TODAY_OVERRIDE` near the top of the `<script>` block in `dashboard.html` (e.g. `'2026-05-15'` to simulate Day 12).

---

## Hosting it somewhere besides your laptop

`dashboard.html` is a single static file. Drop it on:
- Vercel / Netlify (free) — drag-and-drop, done in 30 seconds.
- GitHub Pages (free).
- Supabase Storage — keep everything in one place.

Or just keep the local file. It works the same.

---

## File reference

| File | What it does | When to run |
|---|---|---|
| `01_schema.sql` | Creates the `signal_tasks` table, RLS policy, helper views | Once, first install |
| `02_seed_peri.sql` | Loads Peri's 49 tasks (30 TikToks, 13 LinkedIn, 6 YouTube/batch days) | Once, first install |
| `03_schema_patch_v2.sql` | Adds `is_off_plan` column for off-plan tasks | Once, after `02_seed_peri.sql` |
| `04_seed_erin.sql` | Loads Erin's 109 tasks across all her channels | Once, after `03_schema_patch_v2.sql` |
| `dashboard.html` | The dashboard itself. Single file. | Open in browser |
