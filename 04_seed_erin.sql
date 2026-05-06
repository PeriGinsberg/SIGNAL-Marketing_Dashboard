-- =============================================================
-- SIGNAL Dashboard — Seed Data (Erin)
-- Erin's full Month 1 task list across LinkedIn, Facebook, WRN Company,
-- Instagram Reels + Stories, Reddit, and Operations.
-- Run AFTER 01_schema.sql, 02_seed_peri.sql, and 03_schema_patch_v2.sql.
-- Re-runnable: wipes Erin's rows first.
-- =============================================================

delete from signal_tasks where owner = 'erin';

-- =============================================================
-- ERIN LINKEDIN POSTS (9 total — Days 2, 4, 7, 11, 14, 18, 21, 25, 28)
-- =============================================================

insert into signal_tasks (day_number, task_date, owner, channel, pillar, task_type, title, body, hashtags) values

(2, '2026-05-05', 'erin', 'linkedin', null, 'post',
'LinkedIn: The view from the operator seat',
'Six weeks into the SIGNAL launch and one thing is clear.

Most of what''s hard about job searching has nothing to do with the resume.

It''s the figuring out where to apply. The keeping track of 30 applications across five inboxes and three browser tabs. The following up. The not knowing whether you''re getting rejected because of fit or polish or just bad timing.

When Peri shows me a SIGNAL score for the first time, the question they always ask is the same: ''wait, why was nobody telling me this before?''

That''s the gap we''re filling. Not ''better resume tool.'' Not ''AI does it for you.'' The actual gap is: telling someone in 30 seconds whether the next four hours of their Saturday will produce anything.

I''m Erin, and I run customer success and operations at SIGNAL. If you have feedback about the product, you''ll usually be talking to me. We read every message.',
'#startup #operations #customersuccess #careertools'),

(4, '2026-05-07', 'erin', 'linkedin', null, 'post',
'LinkedIn: What we hear from new users',
'I''ve talked to about 40 new SIGNAL users in the past two weeks. Three things keep coming up.

One. They didn''t know fit scoring was a thing they could check before applying. Most of them assumed every job was worth a shot if the title was right.

Two. The first scan is almost always lower than they expect. The reaction is usually ''oh no.'' Then I explain the score isn''t the verdict on them — it''s the verdict on the match. They''re not bad at their careers. They''re applying out of range. That distinction unlocks something.

Three. Once they see two or three scans, they start scanning before they apply. Not after. That''s the behavior shift we wanted. They go from ''apply to everything'' to ''check first.'' It happens fast — usually within the first week.

If you''ve ever applied to 30 jobs and felt like you were screaming into a void, the void wasn''t the problem. The aim was.',
'#customersuccess #earlycareer #jobsearch #applysmarter'),

(7, '2026-05-10', 'erin', 'linkedin', null, 'post',
'LinkedIn: How we work',
'Quick peek behind the scenes at how the SIGNAL team actually operates.

Three of us. Peri (founder, the 30 years of hiring side), me (operations, customer success, marketing), and Aiden (campus outreach, project R&D, peer-credible to the audience we''re trying to reach).

We meet Mondays for an hour. We pull the metrics dashboard, ask three questions:

One — what worked last week.
Two — what didn''t.
Three — what''s the single most important thing this week.

Then we go.

We don''t have a whiteboard full of OKRs. We don''t have weekly all-hands. We have one shared spreadsheet, one shared Notion, and the discipline to actually look at what the numbers say.

Small team, low overhead, fast loop. That''s the bet.

If you''re building something with a partner or family or a tiny team — what''s the operating rhythm that actually works for you? Genuinely curious.',
'#smallbusiness #startup #operations #foundermode'),

(11, '2026-05-14', 'erin', 'linkedin', null, 'post',
'LinkedIn: The question I get most',
'The question I get most from new SIGNAL users:

''Is the score going to tell me to give up on jobs I want?''

No. The score isn''t a verdict. It''s a diagnostic.

If you''re at 35% on a job you want — that''s information. The information might be: this is a 5-year role and you have 1 year of experience, so unless you find a junior version of this same job, your time is better spent elsewhere this week.

Or the information might be: you have the right experience but it''s framed in a way the system doesn''t recognize. Different fix — not ''give up,'' just ''translate.''

Or the information might be: you''re missing one specific skill the job emphasizes. Add a project. Take a course. Come back in three months.

The score isn''t telling you to give up. It''s telling you what to do with the next four hours of your Saturday.

You decide.',
'#customersuccess #careertools #applysmarter #jobsearch'),

(14, '2026-05-17', 'erin', 'linkedin', null, 'post',
'LinkedIn: Why I joined SIGNAL',
'People ask me sometimes: why did you go all-in on SIGNAL?

Honest answer.

I watched my partner spend 30 years giving away advice for free that should have been a tool. Friends called. Their kids called. Their friends'' kids called. Same conversation, over and over, one person at a time.

Meanwhile across the country, a million college seniors were graduating into job searches without a single piece of the information Peri was giving people for free in 30-minute phone calls.

That''s not a coaching problem. That''s a software problem.

So we built it.

I came in to run the operating side because I knew the product would never reach scale if Peri was the only one talking to customers. I wanted Peri''s brain at the steering wheel and a real machine running underneath it.

Six weeks in, the conversion data is telling us we built the right thing. People scan once. They come back. They tell their friends. That''s the behavior we wanted.

Building it is the whole point.',
'#startup #partnership #foundermode #careertools'),

(18, '2026-05-21', 'erin', 'linkedin', null, 'post',
'LinkedIn: What week-2 users tell us',
'I check in with users about 14 days after they sign up. Here''s what week-2 users tell me.

The most common answer when I ask ''what changed in your search this week'':

''I''m not applying to as many things, and I feel less anxious about it.''

That''s the part I didn''t expect.

We didn''t build SIGNAL to lower anxiety. We built it to improve targeting. But the anxiety thing is a real second-order effect. When you stop applying to 30 jobs you have no shot at, you also stop refreshing your inbox 30 times a day for rejections that aren''t going to come.

You apply to 8 jobs you''re competitive for. You wait. You feel like you''re in the game.

That''s the difference between gambling and playing.

If you''ve ever been in a job search that felt like gambling — you''re not bad at jobs. You''re just out of range. Score the fit, narrow the list, get back in the game.',
'#customersuccess #careertools #applysmarter #jobsearch'),

(21, '2026-05-24', 'erin', 'linkedin', null, 'post',
'LinkedIn: What we''re learning about parents',
'Surprising thing we''re seeing in our user base.

A meaningful chunk of our paid SIGNAL users this month — maybe a quarter — didn''t sign themselves up. Their parents did.

Mom or Dad bought it as a gift to their kid who''s graduating, or who''s been job hunting for two months without a callback. We didn''t market this way. We didn''t have a ''gift it'' button. They just figured it out.

Parents have been telling me the same story.

''My kid is qualified, hardworking, frustrated, and stuck. I can''t fix the market. I can''t write the resume. But I can buy them a tool that tells them whether they''re applying to the right jobs.''

So we''re building for that now too. A parent-facing landing page. A gift flow. A version of the messaging that talks to them directly, not just to the kid.

If you''re a parent of a senior or recent grad — what would you actually want from a tool you bought for them? Genuinely asking. We''re listening.',
'#parents #collegesenior #careeradvice #productdesign'),

(25, '2026-05-28', 'erin', 'linkedin', null, 'post',
'LinkedIn: The 30-second test',
'If you''re job hunting right now, do this in the next 30 seconds.

Open the next job posting you were going to apply to.

Ask yourself one question: ''If I had to predict my fit score on a 0-100 scale, what would I guess?''

Now run the SIGNAL scan. Compare your guess to the real score.

Most people are off by 15-25 points. Usually optimistic.

That gap — between what you think your fit is and what it actually is — is the gap that''s been costing you interviews. You''ve been optimizing your resume for jobs you scored 35% on while skipping the ones you scored 75% on because they ''felt like a stretch.''

The 30-second test is the cheapest diagnostic you''ll do this week.

Free scan link in my profile.',
'#jobsearch #applysmarter #careertools #earlycareer'),

(28, '2026-05-31', 'erin', 'linkedin', null, 'post',
'LinkedIn: What month one taught us',
'We''re 30 days into a real marketing push for SIGNAL. Quick honest read on what we learned.

What worked: Peri''s TikTok. By a lot. Every script we ran built on the 30-years-on-the-hiring-side authority and that pattern compounds. People stop scrolling for it.

What surprised us: parent demand. We didn''t lead with parents and they showed up anyway. About 25% of paid signups came from gift purchases. Building for that explicitly next month.

What didn''t work: anything generic. The first ads we ran without a specific audience or hook underperformed everything. The content that named exactly who it was for — ''parents of seniors,'' ''recent grads with no callbacks,'' ''finance majors stuck at 2.8 GPA'' — worked better at every level.

What we''re doubling down on next month: more Peri authority. More parent messaging. More scoring-live content because the screen-recording format converts.

Building in public means showing the work. So that''s the work.',
'#buildinpublic #startup #marketing #careertools');


-- =============================================================
-- ERIN FACEBOOK POSTS (9 total — Days 2, 5, 9, 12, 16, 19, 23, 26, 30)
-- =============================================================

insert into signal_tasks (day_number, task_date, owner, channel, pillar, task_type, title, body, notes) values

(2, '2026-05-05', 'erin', 'facebook', null, 'post',
'Facebook: Repurposed from TikTok Day 1 (Reel)',
'30 years on the hiring side, here''s the part nobody tells job seekers.

When you upload your resume, a system reads it before any human ever does. Pulls keywords. Scores match. Ranks you against everyone else.

If your resume is number 47 on the list, no recruiter ever sees you.

That''s not a flaw in you. That''s a flaw in how you''re applying.

The fix isn''t a prettier resume. The fix is knowing which jobs you''re competitive for before you apply, and tailoring for those.

Free SIGNAL scan: [LINK]',
'POST AS REEL — cross-post TikTok Day 1 video. Same vertical 9:16 file. Reels get 3-4x more reach than standard video. Hashtags in first comment.'),

(5, '2026-05-08', 'erin', 'facebook', 'parent_talk', 'post',
'Facebook: Parent angle — kid not hearing back (plain text)',
'Parents — if your kid is job hunting and not hearing back, this one is for you.

The reason isn''t the resume. It''s the targeting.

Most early-career candidates apply to jobs they were never competitive for. Nobody told them how to filter. Nobody scored their fit.

So they sent 30 applications and got crickets. They blame themselves.

The actual fix: score the fit before applying. Skip jobs below 60%. Spend the saved hours on the realistic ones.

SIGNAL does the scoring in 30 seconds. $99 for 90 days. Cheaper than one bad month of starting over.

(Link in first comment.)',
'PLAIN TEXT POST — no visual. Parent feed rewards plain text. Drop link in FIRST COMMENT.'),

(9, '2026-05-12', 'erin', 'facebook', null, 'post',
'Facebook: Repurposed from TikTok Day 4 (Reel — 27-app stat)',
'The average college senior applies to 27 jobs. Most don''t get a single interview.

Here''s why.

They''re applying to roles they were never competitive for in the first place. Nobody told them. Nobody scored their fit. Nobody said don''t waste your hours on this one.

So they spent 100+ hours on applications and got two callbacks.

The hours are the cost. The information is the fix.

Stop guessing. Free SIGNAL scan, 30 seconds: [LINK]',
'POST AS REEL — TikTok Day 4 (highest-engagement TikTok of Week 1). Prioritize this Reel.'),

(12, '2026-05-15', 'erin', 'facebook', 'parent_talk', 'post',
'Facebook: Parent angle — conversation question (quote card)',
'Parents of college seniors — the conversation to have this weekend.

Don''t ask ''how''s the search going.'' That''s the worst question. They feel like they''re failing every time someone asks.

Ask this instead: ''How are you deciding which jobs to apply to?''

If the answer is ''I''m just applying to anything that looks interesting'' — that''s the conversation.

The fix is filtering before applying. Score the fit. Skip the bottom half. Spend the saved hours on the realistic ones.

If you want them to have a tool that does the scoring in 30 seconds, SIGNAL is $99 for 90 days. Link below.

[LINK]',
'QUOTE CARD GRAPHIC (1080x1080). Navy bg, Georgia white text, the question centered. Created in Canva using brand kit. See plan Section D.'),

(16, '2026-05-19', 'erin', 'facebook', null, 'post',
'Facebook: Repurposed from TikTok Day 8 (Reel — Six Seconds)',
'Six seconds.

That''s how long the average recruiter spends on the average resume on first pass.

Here''s what they look at.

Top third of the page. Your name, most recent title, and the first two bullets under it. If those four things don''t tell them you can do the job, they move on.

Everything below the fold rarely gets read.

So the question to ask before submitting: does the top third of my resume tell a recruiter I can do this job in six seconds?

If you''re not sure, run a free SIGNAL scan: [LINK]',
'POST AS REEL — TikTok Day 8 (Six Seconds). Strong hook in first 3 seconds = strong Facebook algorithm performance.'),

(19, '2026-05-22', 'erin', 'facebook', 'parent_talk', 'post',
'Facebook: Parent angle — kid feels stuck (plain text)',
'If your kid has been job hunting for two months and feels stuck, here''s what to say.

Don''t ask ''how''s it going.'' That''s the worst question.

Ask: ''What are you noticing about which applications get responses and which don''t?''

That''s a real conversation. It pulls them out of feeling and into thinking. If they don''t have an answer, that''s the gap. They''re applying without a feedback loop.

SIGNAL gives them one. They see why some get traction and others don''t. The feeling stuck part usually breaks once they have data.

(Link in first comment.)',
'PLAIN TEXT POST — link in first comment, same as Day 5.'),

(23, '2026-05-26', 'erin', 'facebook', null, 'post',
'Facebook: Repurposed from TikTok Day 17 (stat-comparison card)',
'''It''s all about who you know.'' Sort of true. Mostly a cope.

Here''s the actual data.

About 30% of jobs are filled through referrals. That''s real.

But 70% of jobs are filled through applications.

So ''it''s all who you know'' is a half-truth that talks people out of trying.

The version that''s actually true: networking gets you a foot in some doors. Strong applications get you in the rest.

You need both. Free SIGNAL scan to fix the application side: [LINK]',
'STAT-COMPARISON CARD (1080x1080). White bg, navy 30%/orange 70% treatment. Created in Canva, see plan Section D.'),

(26, '2026-05-29', 'erin', 'facebook', 'parent_talk', 'post',
'Facebook: Parent angle — 6 months trajectory (photo)',
'Parents — 6 months. That''s what your senior has between now and the first job they take.

The job they take out of school sets the trajectory for the next five years.

A first job in their field at a real company means promotions, raises, real career capital.

A first job in retail because the search didn''t pan out means starting over a year later, behind their peers.

You can''t fix the market. You can''t write the resume. But you can hand them a tool that tells them which applications are worth the four hours.

SIGNAL: $99 for 90 days. Built by a 30-year hiring manager.

[LINK]',
'PHOTO (1200x630 horizontal). Parent + college kid at kitchen table with laptop, candid. Use Unsplash if not shooting original. Most emotionally resonant Facebook post of the month.'),

(30, '2026-06-02', 'erin', 'facebook', null, 'post',
'Facebook: Day 30 milestone wrap (stats-recap graphic)',
'30 days of running SIGNAL marketing. Quick honest read.

100+ scans run by users this month. Average first score: 40%. Most people are applying out of range without knowing it.

When users filter to jobs above 70%, interview rate roughly triples. Same effort, different aim.

The most surprising finding: about a quarter of paid signups came from parents buying SIGNAL for their kid. We didn''t market it that way — they figured it out.

The thesis is working. The job search isn''t broken. The targeting is.

If you''ve been thinking about it, this is the time. [LINK]',
'STATS-RECAP CARD (1080x1080). Navy bg with three stat blocks. Save the template — re-use for EOM 2 and EOM 3.');


-- =============================================================
-- WRN COMPANY LINKEDIN POSTS (4 total — Days 6, 13, 20, 27)
-- =============================================================

insert into signal_tasks (day_number, task_date, owner, channel, pillar, task_type, title, body, hashtags, notes) values

(6, '2026-05-09', 'erin', 'linkedin', null, 'post',
'WRN Company LinkedIn: What SIGNAL is',
'Workforce Ready Now built SIGNAL because the job search isn''t broken — the targeting is.

Most early-career candidates apply to jobs they were never competitive for, then assume the rejection was about them.

It almost never is.

SIGNAL gives you a fit score on any job in 30 seconds. You see your real odds before you spend four hours on the application.

If the score is 70%+, apply with confidence.
If it''s below 60%, save the time. Spend it on the jobs where you''re actually in the running.

Built by Peri, who spent 30 years on the hiring side. Made for everyone who never had a Peri to call.

Free first scan at the link in our bio.',
'#earlycareer #jobsearch #applysmarter #careertools',
'POST FROM WRN COMPANY PAGE (not personal). Visual: SIGNAL product screenshot — the scan result page.'),

(13, '2026-05-16', 'erin', 'linkedin', null, 'post',
'WRN Company LinkedIn: Three audiences we serve',
'Three audiences we built SIGNAL for.

College seniors. The next six months set their early-career trajectory. SIGNAL tells them which jobs are worth the four-hour application before they hit submit.

Recent grads. Six months out, no callbacks, starting to wonder if it''s them. It''s not. SIGNAL shows them which of their applications were never going to work — and which ones could, with a small fix.

Early-career professionals making the first jump. Year one, year two, year three — the first internal pivot is the hardest. SIGNAL scores their resume against the actual jobs they want, and shows what''s missing before they apply.

If that''s you — or your kid — link in bio for the free first scan.',
'#careeradvice #earlycareer #jobsearch #applysmarter',
'POST FROM WRN COMPANY PAGE. Visual: three-panel graphic: senior / grad / early-pro.'),

(20, '2026-05-23', 'erin', 'linkedin', null, 'post',
'WRN Company LinkedIn: The 30-day milestone (100 scans)',
'We just crossed 100 SIGNAL scans this month.

That''s 100 people who got a real number on a real job before they wrote a real cover letter.

Some highlights from what we saw:

The most-scanned roles: marketing coordinator, junior analyst, product manager (no surprise).

The biggest ''wait, what'' moments: career pivots scoring under 30%. Same person, different framing, score doubled.

The most common reaction: ''why didn''t anyone tell me this years ago.''

We''re building toward the version where every senior in America has access to the diagnostic 30-year hiring veterans give their friends'' kids on the phone, but at the moment they actually need it. Not after.

Onward. Free scan link in bio if you''re job searching.',
'#milestone #startup #careertools #buildinpublic',
'POST FROM WRN COMPANY PAGE. Visual: Simple milestone graphic — "100 scans."'),

(27, '2026-05-30', 'erin', 'linkedin', null, 'post',
'WRN Company LinkedIn: What''s coming next',
'Heads up on what''s coming.

The current SIGNAL gives you a fit score on any job. Free first scan, then $99 for 90 days of unlimited scanning. That''s working.

What''s launching next:

The Project Library. Real professional projects you complete with AI-simulated stakeholders — market research, financial analysis, strategy memos. End result: a portfolio piece you can show employers, attach to applications, talk about in interviews. That''s launching for SIGNAL Pro at $299.

Coaching modules. Self-paced content built from 30 years of hiring-side experience. Salary negotiation, LinkedIn optimization, interview prep that actually rehearses you.

Coach Review. For users who want it, optional human expert feedback on project deliverables. $149 per review.

The current version stays. The next version layers on top.

If you want early access when Pro launches, the link in bio gets you on the waitlist.',
'#productlaunch #startup #careertools #buildinpublic',
'POST FROM WRN COMPANY PAGE. Visual: Product roadmap snippet or feature collage.');


-- =============================================================
-- IG NATIVE REELS (4 total — Days 6, 14, 21, 28)
-- =============================================================

insert into signal_tasks (day_number, task_date, owner, channel, pillar, task_type, title, body, caption, hashtags, notes) values

(6, '2026-05-09', 'erin', 'instagram', null, 'post',
'IG-Native Carousel: How the SIGNAL score works',
'Slide 1: ''How the SIGNAL score works.'' (title slide, navy + orange)
Slide 2: ''Step 1: Paste any job URL.'' (screenshot of paste box)
Slide 3: ''Step 2: SIGNAL scores your fit.'' (screenshot of score result, sample 67%)
Slide 4: ''Step 3: Score 70%+ → apply. Below 60% → skip.'' (decision rule)
Slide 5: ''Free first scan. Link in bio.'' (CTA)',
'Save this for the next time you''re about to spend Saturday on a job application.',
'#applysmarter #jobsearch #careertools #earlycareer #recentgrad',
'5-SLIDE CAROUSEL. Posted on @workforcereadynow. Reshare to Stories same day.'),

(14, '2026-05-17', 'erin', 'instagram', null, 'post',
'IG-Native Reel: Three things parents say to me',
'Erin to camera. 30 seconds.

''I run customer success at SIGNAL. Three things parents say to me, every single week.

One. My kid is qualified. Why aren''t they getting callbacks? Answer: it''s not them, it''s the targeting.

Two. I don''t want to hover. Answer: don''t. Hand them a tool. Step back.

Three. Is $99 worth it? Answer: cheaper than one bad month of starting over.''',
'Three things parents tell me every week. If any of these sound familiar, link in bio.',
'#parents #collegesenior #recentgrad #careeradvice',
'30-SECOND REEL. Erin on camera. Posted on @workforcereadynow. Reshare to Stories same day.'),

(21, '2026-05-24', 'erin', 'instagram', null, 'post',
'IG-Native Carousel: Resume top-third audit',
'Slide 1: ''Audit your resume in 30 seconds.'' (title)
Slide 2: ''Cover the bottom two-thirds with your hand.''
Slide 3: ''What''s in the top third?''
Slide 4: ''Question 1: Does your most recent role title match what you''re applying to?''
Slide 5: ''Question 2: Are your top two bullets the strongest two on the whole resume?''
Slide 6: ''Question 3: Could a recruiter tell you can do the job in 6 seconds?''
Slide 7: ''If any answer is no — fix the top third before you apply to one more job.''',
'Six seconds is all your resume gets. Spend them on the top third. Free SIGNAL scan in bio.',
'#resumetips #jobsearch #careertips #earlycareer #applysmarter',
'7-SLIDE CAROUSEL. Posted on @workforcereadynow. Reshare to Stories same day.'),

(28, '2026-05-31', 'erin', 'instagram', null, 'post',
'IG-Native Reel: What 30 days of SIGNAL data showed',
'Peri to camera, casual format. 45 seconds.

''30 days of running SIGNAL scans. Three things the data showed.

One. Average first scan: 40%. Most people apply out of range without knowing it.

Two. When you filter to 70%+, interview rate triples. Same effort, different aim.

Three. Career pivots score lowest by default — but they''re the most rescuable. 22% → 64% in 15 minutes with the right framing.

The score isn''t a verdict. It''s a diagnostic. You decide what to do with it.

Free scan, link in bio.''',
'30 days of data. Three things the scans showed. Link in bio.',
'#careertools #jobsearch #applysmarter #earlycareer',
'45-SECOND REEL. Peri on camera (Erin posts/manages). Reshare to Stories same day.');


-- =============================================================
-- IG STORIES — 30 daily prompts (one per day)
-- These are smaller tasks — keep titles tight, body holds the prompt detail.
-- =============================================================

insert into signal_tasks (day_number, task_date, owner, channel, task_type, title, body) values
(1, '2026-05-04', 'erin', 'instagram', 'other', 'IG Story: BTS filming setup',
'Behind-the-scenes shot of Peri''s filming setup. Caption: ''Filming this week''s content.'''),
(2, '2026-05-05', 'erin', 'instagram', 'other', 'IG Story: Application count poll',
'Poll. ''How many applications have you sent this month? <10 / 10-30 / 30+ / I lost count'''),
(3, '2026-05-06', 'erin', 'instagram', 'other', 'IG Story: Question sticker — what job',
'Question sticker. ''What job are you applying to this week? I''ll share a few SIGNAL scans tomorrow.'''),
(4, '2026-05-07', 'erin', 'instagram', 'other', 'IG Story: Reshare 3 user job titles + live scan',
'Reshare 3 user-submitted job titles from yesterday''s Q&A. Run live scans on them in the next story slide.'),
(5, '2026-05-08', 'erin', 'instagram', 'other', 'IG Story: Quote card — hours are the cost',
'Quote card. ''The hours are the cost. The information is the fix.'''),
(6, '2026-05-09', 'erin', 'instagram', 'other', 'IG Story: Reshare today''s IG-native carousel',
'Carousel reshare from today''s IG-native Reel (How the SIGNAL score works).'),
(7, '2026-05-10', 'erin', 'instagram', 'other', 'IG Story: Recruiter ghosted poll (joke)',
'Poll. ''Has a recruiter ever ghosted you? Yes / Yes / Yes / Yes (results joke).'''),
(8, '2026-05-11', 'erin', 'instagram', 'other', 'IG Story: Question sticker — parents fear',
'Question sticker. ''Parents — what''s the question you''re afraid to ask your senior?'''),
(9, '2026-05-12', 'erin', 'instagram', 'other', 'IG Story: BTS — kitchen table office',
'Behind-the-scenes — Erin and Peri working at the kitchen table. Caption: ''Office for the day.'''),
(10, '2026-05-13', 'erin', 'instagram', 'other', 'IG Story: Quote card from today''s post',
'Quote card from today''s TikTok or LinkedIn post.'),
(11, '2026-05-14', 'erin', 'instagram', 'other', 'IG Story: Cover letter poll',
'Poll. ''Cover letter for every job? Yes / Sometimes / Never / Depends.'''),
(12, '2026-05-15', 'erin', 'instagram', 'other', 'IG Story: Reshare TikTok comment',
'Reshare a TikTok comment that resonated this week. Caption: ''This.'''),
(13, '2026-05-16', 'erin', 'instagram', 'other', 'IG Story: Question sticker — recruiter first look',
'Question sticker. ''What''s the first thing recruiters notice on your resume?'''),
(14, '2026-05-17', 'erin', 'instagram', 'other', 'IG Story: Reshare today''s Erin Reel',
'Reshare today''s Erin Reel about three things parents say.'),
(15, '2026-05-18', 'erin', 'instagram', 'other', 'IG Story: BTS — Peri reviewing follower resume',
'Behind-the-scenes — Peri reviewing a follower''s resume on screen. Caption: ''Spending the morning on these.'''),
(16, '2026-05-19', 'erin', 'instagram', 'other', 'IG Story: Quote card — 7/10 to right 10',
'Quote card. ''A 7/10 resume to the right 10 jobs beats a 10/10 to the wrong 50.'''),
(17, '2026-05-20', 'erin', 'instagram', 'other', 'IG Story: Have you ever scanned poll',
'Poll. ''Have you ever scanned a job before applying? Yes / No / What''s that?'''),
(18, '2026-05-21', 'erin', 'instagram', 'other', 'IG Story: Question sticker — applying fewer',
'Question sticker. ''What''s stopping you from applying to fewer jobs?'''),
(19, '2026-05-22', 'erin', 'instagram', 'other', 'IG Story: Reshare a user win',
'Reshare a user win comment. Caption: ''This is what we''re here for.'''),
(20, '2026-05-23', 'erin', 'instagram', 'other', 'IG Story: 100 SIGNAL scans milestone',
'Milestone story. ''100 SIGNAL scans this month.'' (Reshare WRN company post.)'),
(21, '2026-05-24', 'erin', 'instagram', 'other', 'IG Story: Reshare today''s carousel',
'Carousel reshare from today''s IG-native Reel (Resume top-third audit).'),
(22, '2026-05-25', 'erin', 'instagram', 'other', 'IG Story: Tracking applications poll',
'Poll. ''Are you tracking your applications? Spreadsheet / In my head / Nope.'''),
(23, '2026-05-26', 'erin', 'instagram', 'other', 'IG Story: BTS — Monday team meeting agenda',
'Behind-the-scenes — the Monday team meeting agenda. Caption: ''How we run.'''),
(24, '2026-05-27', 'erin', 'instagram', 'other', 'IG Story: Quote card — resume vs story',
'Quote card. ''Resume gets you the interview. Story gets you the offer.'''),
(25, '2026-05-28', 'erin', 'instagram', 'other', 'IG Story: Question sticker — dream job',
'Question sticker. ''What''s a job you''d love to apply to but think you have no shot at? I''ll scan one of them tomorrow.'''),
(26, '2026-05-29', 'erin', 'instagram', 'other', 'IG Story: Live scan from yesterday''s submission',
'Live scan of one job from yesterday''s submission. Show the score. Show what to do with it.'),
(27, '2026-05-30', 'erin', 'instagram', 'other', 'IG Story: After 30 days poll',
'Poll. ''After 30 days of SIGNAL, are you applying to more or fewer jobs? More / Same / Fewer / I started using SIGNAL today.'''),
(28, '2026-05-31', 'erin', 'instagram', 'other', 'IG Story: Reshare today''s Peri Reel',
'Reshare today''s Peri 30-day-data Reel.'),
(29, '2026-06-01', 'erin', 'instagram', 'other', 'IG Story: Quote card — apply smarter',
'Quote card. ''Apply smarter. Get hired.'''),
(30, '2026-06-02', 'erin', 'instagram', 'other', 'IG Story: Recap carousel — best of month',
'Recap carousel — 5 best stats / lessons from the month. Soft CTA: free scan link in bio.');


-- =============================================================
-- ERIN REDDIT (4 long-form posts + ongoing comments noted)
-- =============================================================

insert into signal_tasks (day_number, task_date, owner, channel, task_type, title, body, notes) values

(10, '2026-05-13', 'erin', 'reddit', 'post',
'Reddit long-form: r/careeradvice — 30 years on hiring side',
'Title: After 30 years on the hiring side, here''s what I wish more early-career people knew

Posting here because I''ve watched the same pattern play out for 30 years and I think it''s worth a long post.

I spent 20 years as a hiring manager and 10 years as an executive recruiter. I''ve made offers to thousands of people and passed on tens of thousands more.

Here are the patterns I''ve noticed in why qualified early-career candidates don''t hear back, in order of how often I see them.

1. They''re applying to jobs they were never competitive for.
This is the biggest one by a mile. The job posts say 5 years experience. They have 1. The job needs three specific certifications. They have zero. The role is a senior IC role at a Fortune 500 and they''re a recent grad. They apply anyway, because the listing is ''open to entry-level candidates'' or because they want the company. The system filters them out before a human reads anything. They never hear back. They blame their resume.

The fix isn''t a better resume. The fix is filtering for jobs you''re realistically in the running for and spending your hours there.

2. The top third of their resume isn''t selling them.
Recruiters spend six seconds on the average resume. We look at the top third. Your name, your most recent title, the first two bullets under it. If those four things don''t tell us you can do the job, we move on. Most early-career resumes bury the strongest credentials below the fold. Fix the top third before you fix anything else.

3. They''ve never tracked their own data.
If you''ve sent 30 applications and don''t know your fit score on any of them, your callback rate, the response rate, where in the funnel you''re losing — you don''t have a strategy. You have hope. Hope isn''t a strategy.

Track every application. Five columns. Company, role, date applied, your honest fit estimate, status.

4. They don''t follow up.
Five to seven days after applying, send the hiring manager or recruiter a brief LinkedIn message. One sentence on why you''re a fit. One sentence asking if they have a moment to connect. Don''t reattach the resume. About 30% of candidates do this. They get more callbacks than the 70% who don''t.

5. They prep for the resume but not for the interview.
Resume gets you the interview. Interview gets you the offer. They''re not the same skill. The candidates who lose at the offer stage almost always lose because they can''t tell specific stories about their work in a way that makes the interviewer believe them. ''I helped the team'' loses. ''I rebuilt our onboarding flow, cut time-to-first-action from 12 minutes to 4, and 30-day retention went up 18%'' wins. Same accomplishment, different telling.

That''s the bulk of what I see. Hope this helps someone here. Happy to answer questions in the comments.',
'POST FROM ERIN''S ACCOUNT to r/careeradvice. Attribute Peri in the body. Read sub rules first. No SIGNAL link in Month 1.'),

(16, '2026-05-19', 'erin', 'reddit', 'post',
'Reddit long-form: r/findapath — career pivot translation',
'Title: Career pivots fail at the resume stage 80% of the time. Here''s how to fix that.

If you''re trying to pivot into a new field and you''re applying and not hearing anything back, this is for you.

I''ve watched a lot of career pivots over 30 years on the hiring side. The single biggest reason they fail at the resume stage is translation. Not skills. Not credentials. Translation.

Here''s what I mean.

A teacher applies to a project manager role at a tech company. Resume looks great for teaching. Score against the PM job, in the system that screens applications: 22%. The candidate gives up. Says tech doesn''t want teachers.

Same person, same accomplishments, framed differently:
— ''Curriculum design'' becomes ''project planning across multiple stakeholder groups.''
— ''Classroom management'' becomes ''managing 30+ stakeholders with competing priorities on tight deadlines.''
— ''Lesson planning'' becomes ''sequenced project deliverables aligned to outcome milestones.''
— ''Parent-teacher conferences'' becomes ''cross-functional reporting and stakeholder updates.''

Same job. Same accomplishments. New framing. New score: 64%.

This isn''t lying. It''s translating.

The system reading your resume doesn''t know what ''curriculum design'' means in the context of project management. It knows what ''project planning'' means. You have to give it the right vocabulary.

Three rules for pivots:

One. Read the job posting. Highlight every verb and noun the posting uses to describe the role. Those are the words that need to appear in your resume.

Two. Take your existing accomplishments and rewrite them using the posting''s vocabulary. Same things you actually did. New framing.

Three. Make sure the top third of your resume reads like a person already doing the new job. Headline, first two bullets. Those are the four things a recruiter scans.

If you want to see what your current fit score is on a target role, plenty of free tools out there for this now. Worth knowing where you actually stand before you spend Saturday on another application.',
'POST FROM ERIN''S ACCOUNT to r/findapath. Career-pivot focused sub. No direct SIGNAL link.'),

(22, '2026-05-25', 'erin', 'reddit', 'post',
'Reddit long-form: r/jobs — five-column tracking spreadsheet',
'Title: Tracking my applications changed everything. Five-column spreadsheet, not magic.

Sharing because this took me too long to figure out and I see other people on this sub making the same mistake.

I was applying to ~30 jobs a month with no system. No tracking. No follow-up. No data. I''d send the application and forget. When something came back, it was a surprise. When something didn''t, I had no idea what was failing.

Then I built a five-column spreadsheet. Took 10 minutes.

Columns:
— Company
— Role title
— Date applied
— My honest fit estimate (0-100, gut check)
— Status (applied / phone screen / rejected / no response)

Then I sorted by fit estimate. Top of the list got a follow-up at day 7. Bottom of the list I let go cold.

Two things changed.

One: I noticed that applications I rated above 70% fit had a 25% callback rate. Applications I rated below 50% had a 2% callback rate. The data showed me the bottom half was wasted hours.

Two: the follow-ups on high-fit applications converted. About a third of the ''no response'' applications turned into phone screens after a single LinkedIn message at day 7. I''d been losing those by not following up.

The spreadsheet didn''t make me a better candidate. It made me see what was working and stop doing what wasn''t.

Recommend it.',
'POST FROM ERIN''S ACCOUNT to r/jobs. Strict no-self-promo sub — no SIGNAL link, no SIGNAL mention.'),

(25, '2026-05-28', 'erin', 'reddit', 'post',
'Reddit long-form: r/college — senior, stop sending 50',
'Title: Senior here — stop sending 50 applications, here''s what''s actually working

Senior, finance major, started job hunting in January. By March I had sent 47 applications and had two phone screens. I was burnt out. I figured the market was just bad.

A friend talked me into trying something different. Apply to fewer jobs, but actually pick the right ones.

Here''s what I changed.

I made a list of 20 companies I actually wanted to work at. Not 200. Twenty. From there I looked at every open role at each company and ranked them by fit — honest gut check.

Out of maybe 60 open roles total, only about 12 were actually a good fit for a recent grad with my background. The rest needed more experience or different skills.

I applied to those 12 instead. Took my time. Tailored the resume top-third for each. Wrote a short, focused cover letter only for the stretch ones.

Results in the next four weeks: 5 phone screens, 2 second-rounds, 1 offer pending.

I''d done more in 4 weeks of focused applications than in 3 months of spray-and-pray.

The lesson: you don''t need to apply to more. You need to apply to better. The hours are the cost.

(Not selling anything, just sharing because this sub helped me figure it out.)',
'POST FROM ERIN''S ACCOUNT to r/college, written in student voice. No SIGNAL mention.');


-- =============================================================
-- ERIN OPS — DAILY MORNING METRICS PULL (every day, 5 min)
-- =============================================================

insert into signal_tasks (day_number, task_date, owner, channel, task_type, title, body)
select n, date_for_day, 'erin', 'ops', 'other',
  'Morning metrics pull (5 min)',
  'Pull daily numbers into SIGNAL_Metrics_Daily.gsheet:
- Free scans completed (prior day)
- Paid signups (prior day)
- Total ad spend (Meta + TikTok + Google)
- CPL by channel
- CPP by channel
- TikTok views (per post)
- Email open rates (welcome / nurture / parent)

Sources: GA4, Meta Ads Manager, TikTok Ads Manager, Google Ads, Customer.io.'
from (
  select generate_series(1, 30) as n,
         (date '2026-05-04' + (generate_series(1, 30) - 1))::date as date_for_day
) days;


-- =============================================================
-- ERIN OPS — FRIDAY REVIEW (Days 5, 12, 19, 26 + EOM Day 30)
-- =============================================================

insert into signal_tasks (day_number, task_date, owner, channel, task_type, title, body) values

(5, '2026-05-08', 'erin', 'ops', 'review',
'FRIDAY REVIEW (4pm) — Week 1',
'45 min team review with Peri (Aiden if available).

Agenda (from plan Section J):
1. Numbers review (10 min) — share SIGNAL_Metrics_Weekly. Walk through scans, signups, CAC by channel, top/worst posts, ad performance, email metrics.
2. Wins of the week (5 min) — each person names one specific.
3. What didn''t work (10 min) — tag misses as creative/targeting/execution.
4. One decision (10 min) — single most important choice for next week. Capture in writing.
5. Next week priorities (10 min) — each person names one top priority.

End on time. Send notes within an hour.'),

(12, '2026-05-15', 'erin', 'ops', 'review',
'FRIDAY REVIEW (4pm) — Week 2',
'45 min review. Compare Week 2 to Week 1. Decide Week 3 budget reallocations. Same agenda as Week 1 review.'),

(19, '2026-05-22', 'erin', 'ops', 'review',
'FRIDAY REVIEW (4pm) — Week 3',
'45 min review. Major decision point: which two channels are we doubling down on for Week 4 and Month 2? Same agenda.'),

(26, '2026-05-29', 'erin', 'ops', 'review',
'FRIDAY REVIEW (4pm) — Pre-EOM',
'45 min review. Identify any data gaps before EOM and close them today/tomorrow. Same agenda.'),

(30, '2026-06-02', 'erin', 'ops', 'review',
'EOM REVIEW (10am, 90 min) — End of Month 1',
'Walk through Section J EOM framework. Decide green/yellow/red:
- GREEN (scale to $1,500): 8+ paid signups, CAC <$100 in one channel, free→paid >4%
- YELLOW (hold at $1,000): 5-7 paid signups, mixed CAC
- RED (pause): <5 paid signups, CAC >$200 across all

Erin drafts 1-page EOM summary by EOD.');


-- =============================================================
-- ERIN OPS — MONDAY STANDUP (Days 8, 15, 22, 29)
-- =============================================================

insert into signal_tasks (day_number, task_date, owner, channel, task_type, title, body) values

(8, '2026-05-11', 'erin', 'ops', 'standup',
'Monday standup (8am, 30 min) — Week 2 kickoff',
'30 min standup with Peri (Aiden if available). Review Friday''s decisions, set the week.'),

(15, '2026-05-18', 'erin', 'ops', 'standup',
'Monday standup (8am, 30 min) — Halfway-point check-in',
'30 min standup. Mid-month metrics review — are we on track for the 30-day goals?'),

(22, '2026-05-25', 'erin', 'ops', 'standup',
'Monday standup (8am, 30 min) — Final full week',
'30 min standup. Final full week of the month. Plan EOM logistics.'),

(29, '2026-06-01', 'erin', 'ops', 'standup',
'Monday standup (8am, 30 min) — EOM tomorrow',
'30 min standup. Last day of content for Month 1. Confirm EOM logistics for tomorrow.');


-- =============================================================
-- ERIN OPS — DAY 1 LAUNCH + AD MANAGEMENT MILESTONES
-- =============================================================

insert into signal_tasks (day_number, task_date, owner, channel, task_type, title, body) values

(1, '2026-05-04', 'erin', 'ops', 'other',
'LAUNCH DAY — Verify pixels + launch Meta + Google ads',
'8am: pull baseline metrics (followers, page views). Confirm all pixels firing. Day 1 launch verified.

Launch ads:
- Meta Student Ads 1+2 ($25/day combined)
- Meta Parent Ads 1+2 ($25/day combined)
- Google Ads 1, 2, 5 (high-intent, $4/day each = $12/day total)
Total Meta spend live: $50/day for next 4 days while watching initial CTR.'),

(1, '2026-05-04', 'erin', 'ops', 'other',
'Verify email sequences firing',
'Verify D2C Welcome Sequence is firing on test signup. Verify Parent Email Sequence is firing on parent LP test signup.'),

(3, '2026-05-06', 'erin', 'ops', 'other',
'First Meta CTR check',
'Morning metrics. First check on Meta CTR — if any ad < 1.0% CTR after $50 spent, flag for swap on Friday.'),

(8, '2026-05-11', 'erin', 'ops', 'other',
'Launch TikTok Spark Ad 1',
'Launch Spark Ad 1: boost Day 4 organic post (the 27-application stat). $20/day for 5 days. See plan Section H — TikTok Ad 1.'),

(10, '2026-05-13', 'erin', 'ops', 'other',
'Day 10 kill-rule checkpoint',
'Morning metrics. End of Day 10 — first major checkpoint. Pause any ad with CTR < 1.0% after $100 spent.'),

(11, '2026-05-14', 'erin', 'ops', 'other',
'TikTok Spark Ad 1 review',
'Day 11 ad review. If Spark Ad 1 (TikTok) hit > 5% engagement rate, extend for another 5 days. If not, kill and prepare Spark Ad 2.'),

(15, '2026-05-18', 'erin', 'ops', 'other',
'Launch TikTok Spark Ad 2',
'Launch Spark Ad 2: boost Day 7 organic post (Student POV). $20/day for 5 days.'),

(17, '2026-05-20', 'erin', 'ops', 'other',
'Day 17 kill-rule checkpoint',
'Morning metrics. Day 17 — second major kill-rule checkpoint. Any ad with cost-per-purchase > $150 after $200 spent gets paused. Reallocate to top performer.'),

(24, '2026-05-27', 'erin', 'ops', 'other',
'Pre-EOM data hygiene',
'Morning metrics. EOM is in 6 days — verify all data sources are clean for the EOM dashboard pull.'),

(29, '2026-06-01', 'erin', 'ops', 'other',
'EOM dashboard pull',
'Pre-EOM data pull. Populate the EOM dashboard with the final numbers. Close any data gaps.');


-- All Erin tasks default to script_ready
update signal_tasks set status_script_ready = true where owner = 'erin' and task_type = 'post';
