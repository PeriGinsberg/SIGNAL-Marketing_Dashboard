-- =============================================================
-- SIGNAL Dashboard — Seed Data (Peri only)
-- 30 TikTok scripts + 13 LinkedIn posts + key production days
-- Run AFTER 01_schema.sql
-- =============================================================
-- Date mapping: Day 1 = 2026-05-04 (Monday)
-- All dates computed as (2026-05-04 + (day_number - 1) days)

-- Wipe existing peri rows so this is re-runnable
delete from signal_tasks where owner = 'peri';

-- =============================================================
-- TIKTOK POSTS (Days 1-30)
-- =============================================================

insert into signal_tasks (day_number, task_date, owner, channel, pillar, task_type, title, hook, body, on_screen_text, caption, hashtags, cta) values

-- Day 1
(1, '2026-05-04', 'peri', 'tiktok', 'peri_wisdom', 'post',
'Why most applications never reach a human',
'I spent 30 years on the hiring side. Here''s the part nobody tells you about your resume.',
'When you upload your resume, a system reads it before any person ever does. It pulls keywords, scores match, and ranks you against everyone else who applied. If your resume doesn''t speak its language, a recruiter never sees it. That''s not a flaw in you. That''s a flaw in how you''re applying. The fix isn''t a prettier resume. The fix is knowing which jobs you''re actually competitive for before you apply, and tailoring for those.',
'30 years on the hiring side / The part nobody tells you / Apply smarter, not harder',
'Most resumes never reach a human. Here''s why — and what to do instead. Free scan link in bio. #jobsearch #careeradvice #applysmarter',
'#jobsearch #careertips #careeradvice #recruiting #jobhunt #applysmarter #genz #earlycareer',
'Tap the link in my bio. Run a free SIGNAL scan on the next job you were about to apply to. See your real odds before you waste the time.'),

-- Day 2
(2, '2026-05-05', 'peri', 'tiktok', 'scoring_live', 'post',
'Scoring a real marketing coordinator job',
'Let''s see if this resume is actually competitive for this marketing job.',
'Pulling up a real job posting. Marketing coordinator at a mid-size company. Seven years of marketing experience required. Now I''m running a SIGNAL scan with a recent grad''s resume — internships, a couple of projects, no full-time experience. Score comes back: 34%. That''s not the resume''s fault. That''s a fit problem. They''re competing against people with five-plus years. The smart move isn''t a better resume. It''s pivoting to roles where the fit is 70% or higher. That''s where interviews come from.',
'REAL JOB. REAL SCORE. / Score: 34% / Fit beats effort.',
'Watch what a real fit score looks like. This is why most applications don''t get a response. Free scan in bio. #jobsearch #signal #applysmarter',
'#jobsearch #careertips #ats #resumetips #genz #recentgrad #applysmarter',
'Want to scan your own? Link in bio. First scan is free.'),

-- Day 3
(3, '2026-05-06', 'peri', 'tiktok', 'myth_busters', 'post',
'The keyword myth',
'Stop stuffing keywords into your resume. It''s not what you think it is.',
'There''s a myth that ATS systems read your resume and pass it on if you have enough keywords. Half true, half wrong. Yes, keywords matter. But what actually happens is the system scores you against the job, and a recruiter sees a ranked list. If you''re number 47, your keyword stuffing didn''t save you. What gets you to the top of the list isn''t matching every word. It''s matching the right ones, in the right context, for jobs you''re actually competitive for.',
'Keyword myth: BUSTED / Match the right ones, not all of them / Link in bio',
'The keyword myth, explained by someone who hired 10,000+ people. #jobsearchtips #ats #resumemyths #applysmarter',
'#jobsearch #ats #resumetips #careertips #recruiting #mythbuster',
'Run a free SIGNAL scan to see what your real score is. Link in bio.'),

-- Day 4
(4, '2026-05-07', 'peri', 'tiktok', 'peri_wisdom', 'post',
'The 27-application stat',
'The average college senior applies to 27 jobs. Most don''t get a single interview. Here''s why.',
'I see this every year. Students apply to 20, 30, 40 jobs and get crickets. They blame the market. They blame their resume. The real problem is they''re applying to roles they were never competitive for in the first place. Nobody told them. Nobody scored their fit. Nobody said don''t waste your hours on this one. So they spent 100+ hours applying and got two callbacks. The hours are the cost. The information is the fix.',
'27 applications. 0 interviews. / The hours are the cost. / Link in bio.',
'27 applications, 0 interviews — the math nobody told you. #jobsearch #careeradvice #genz #earlycareer',
'#jobsearch #careertips #genzjobs #recentgrad #careeradvice #applysmarter',
'Stop guessing. Get the score before you apply. Link in bio.'),

-- Day 5
(5, '2026-05-08', 'peri', 'tiktok', 'resume_roasts', 'post',
'Anonymous resume roast — overstuffed bullets',
'A follower sent me her resume. She''s been ghosted on 40 applications. Let me show you why.',
'Here''s the resume — names blurred. First thing I see: bullets are seven, eight lines long. Recruiters spend six seconds scanning. If your bullet doesn''t tell a story in one line, it doesn''t tell a story. Second thing: every bullet starts with ''responsible for.'' I don''t care what you were responsible for. I care what you did and what happened because you did it. Numbers, outcomes, scope. Rewrite each bullet in the format: action verb, what you did, what happened.',
'Resume roast: anonymous / ''Responsible for'' → outcome / Link in bio',
'If you''ve been ghosted, your bullets might be the reason. Roast incoming. #resumetips #jobsearch #careertips',
'#resumetips #jobsearch #careertips #resumeroast #genz #applysmarter',
'Want me to roast yours? Free SIGNAL scan first — link in bio.'),

-- Day 6
(6, '2026-05-09', 'peri', 'tiktok', 'parent_talk', 'post',
'If your kid isn''t hearing back',
'If your kid is job hunting and not hearing back, show them this.',
'Here''s what''s actually happening. They''re applying to jobs they were never competitive for, because nobody told them how to filter. They''re spending four to six hours on each application that had a 5% chance from the start. They feel like they''re working hard. They are. They''re just working on the wrong applications. The fix is simple. Score the fit before they apply. If it''s below 60%, skip it. Spend the saved hours on jobs where they''re genuinely in the running.',
'If they''re not hearing back, this is why. / Score before applying. / Link in bio.',
'Parents, this one is for you. Watch your kid stop wasting hours on the wrong jobs. #parents #careeradvice #recentgrad',
'#parents #genzparents #collegegrad #careeradvice #jobsearch',
'SIGNAL gives you the score in 30 seconds. $99 for 90 days. Link in bio if you want to gift it.'),

-- Day 7
(7, '2026-05-10', 'peri', 'tiktok', 'student_pov', 'post',
'I scanned 20 jobs before I applied to one',
'I used to apply to everything. Then I tried scanning 20 jobs before I applied to any of them.',
'Here''s what changed. Out of 20 jobs I would''ve applied to, only six scored above 65%. That''s six jobs, not 20. I spent four hours total on those six applications instead of 30 hours on all 20. And I got two interviews. Two. From six. That''s a 33% interview rate. The 20-application version got me one interview from 20. Less effort, better outcome. The score told me which six were worth the time.',
'20 jobs → 6 worth applying / 4 hrs vs 30 hrs / 2 interviews vs 1',
'What 30 minutes of scanning saved me. Try the free scan. Link in bio. #jobsearch #applysmarter #genz',
'#jobsearch #genzjobs #applysmarter #careertips #recentgrad',
'Try it on your next 5 jobs. Link in bio. Free scan.'),

-- Day 8
(8, '2026-05-11', 'peri', 'tiktok', 'peri_wisdom', 'post',
'What recruiters actually look at first',
'When I was a recruiter, I had six seconds per resume. Here''s exactly what I looked at.',
'Top third of the page. That''s it. Your name, your title, your most recent role, and the first two bullets under it. If those four things didn''t tell me you could do the job, I moved on. Everything below the fold I never read on the first pass. So if your strongest credential is buried on page two, you''re not in the running. The fix: rewrite the top third. Lead with the role title that matches what you''re applying for. Make the first two bullets the strongest two on the whole resume.',
'Six seconds. Top third. / Lead with your strongest. / Link in bio.',
'Six seconds is all your resume gets. Spend them on the top third. #resumetips #jobsearch #careertips',
'#resumetips #jobsearch #careertips #recruiting #earlycareer',
'Run your resume through a free scan. See if the top third lands. Link in bio.'),

-- Day 9
(9, '2026-05-12', 'peri', 'tiktok', 'scoring_live', 'post',
'Scoring a stretch role',
'Let''s see if this finance grad is competitive for a senior analyst role.',
'Real job posting. Senior financial analyst. Three years of experience required. I''m scanning a recent grad''s resume — finance major, two internships, one full-time year as a junior analyst. Score: 69%. That''s the gray zone. Below 60%, the system likely deprioritizes. But this one''s borderline, which means a tailored cover letter and the right keywords could push it over. Versus a 34% score where no amount of polish helps. SIGNAL tells you the difference between a fixable application and a hopeless one. And then tells you exactly how to apply the fixes.',
'Score: 58% / Gray zone = fixable / Apply smart.',
'How to spot the jobs that are almost in your range. #jobsearch #careertips #earlycareer',
'#jobsearch #careertips #earlycareer #finance #applysmarter',
'Win your gray-zone jobs. Link in bio.'),

-- Day 10
(10, '2026-05-13', 'peri', 'tiktok', 'myth_busters', 'post',
'The apply-to-everything myth',
'If you''re applying to everything and seeing what sticks, I have bad news.',
'Applying to everything is a strategy. It''s just an expensive one. The math: average application takes four hours. If you apply to 30 jobs in a month, that''s 120 hours. If your strategy is ''see what happens,'' you''ve spent 120 hours buying a 5% lottery ticket. The version that works: scan 30 jobs in 30 minutes. Apply to the 8 you''re competitive for. Spend 32 hours instead of 120, and your interview rate triples. That''s not a tool replacing your effort. That''s a tool aiming your effort.',
'120 hours. 5% odds. / 30 minutes. 8 real shots. / Link in bio.',
'The ''apply to everything'' strategy is the most expensive one there is. #jobsearch #applysmarter #careertips',
'#jobsearch #applysmarter #careertips #genz #earlycareer #mythbuster',
'Stop the spray-and-pray. Free scan in bio.'),

-- Day 11
(11, '2026-05-14', 'peri', 'tiktok', 'peri_wisdom', 'post',
'The cover letter truth',
'Cover letters. Do they matter? After 30 years of hiring, here''s the truth.',
'Most don''t matter. About 80% of recruiters skim them or skip them entirely. But here''s where they do matter. When two candidates are close, the cover letter breaks the tie. When you''re a stretch applicant — 60-70% fit — a sharp cover letter can pull you up. When you''re applying to a smaller company where humans actually read everything, they matter more. So the rule is: skip the cover letter for high-fit roles where the resume does the work. Write a great one for stretch roles where you need to close the gap.',
'Cover letter rule: / Skip for 80%+ fit / Write for 60-70% fit',
'When cover letters matter — and when they don''t. #careertips #jobsearch #coverletter',
'#jobsearch #coverletter #careertips #earlycareer #applysmarter',
'Know which jobs are stretch roles. SIGNAL scan, link in bio.'),

-- Day 12
(12, '2026-05-15', 'peri', 'tiktok', 'student_pov', 'post',
'What I wish I''d done differently',
'If I could redo my first job search, here''s what I''d change.',
'I''d stop treating it like a numbers game. I sent 60 applications my senior year. I had a spreadsheet. I felt productive. I got two interviews. The thing I wish someone had told me: 60 applications to jobs I had no shot at is just 60 ways to be invisible. What I''d do now: scan first. Filter. Apply to 10. Spend the saved time on networking and prep for those 10. The students I see win don''t apply to more. They apply to fewer, smarter.',
'60 applications, 2 interviews / Apply to fewer, smarter / Link in bio',
'What I''d tell my senior-year self if I could. #genz #jobsearch #careeradvice #recentgrad',
'#genz #jobsearch #careeradvice #recentgrad #applysmarter',
'Try the smarter version. Free SIGNAL scan, link in bio.'),

-- Day 13
(13, '2026-05-16', 'peri', 'tiktok', 'parent_talk', 'post',
'The cost of a bad senior year',
'Parents — if your kid is a senior right now, this is the most important six months of their early career.',
'Here''s why. The job they take out of college sets the trajectory for the next five years. A first job in their field at a real company means promotions, raises, real career capital. A first job in retail because the search didn''t pan out means starting over a year later, behind their peers. The good news: this is fixable in weeks, not months. The job search isn''t broken. The strategy is. Scan before they apply. Filter for fit. Spend hours where they have a real shot.',
'First job sets the trajectory. / 6 months, fixable. / Link in bio.',
'Parents of seniors — these are the most important six months. #parents #collegegrad #careeradvice',
'#parents #collegesenior #recentgrad #careeradvice #jobsearch',
'$99 for 90 days. Cheaper than one bad month of starting over. Link in bio.'),

-- Day 14
(14, '2026-05-17', 'peri', 'tiktok', 'resume_roasts', 'post',
'Resume roast — the objective statement',
'If your resume starts with ''objective: to obtain a position where I can grow,'' I have to talk to you.',
'Nobody reads objective statements. Recruiters skip them. ATS systems don''t score them. They take up the most valuable real estate on your resume — the top — and use it to say nothing. Replace it. Either with a one-line summary that names the role you want and your strongest credential, or with nothing at all. Move your strongest experience up. The first thing on the page should be the thing that proves you can do the job.',
'Objective statement: DELETE / Use the space for proof / Link in bio.',
'Delete the objective statement. Here''s what to put there instead. #resumetips #jobsearch #careertips',
'#resumetips #jobsearch #resumeroast #careertips #applysmarter',
'Run your resume through a free scan. See where it actually lands. Link in bio.'),

-- Day 15
(15, '2026-05-18', 'peri', 'tiktok', 'peri_wisdom', 'post',
'What I look for in interviews vs resumes',
'Resume gets you the interview. Interview gets you the job. They''re not the same skill.',
'On the resume, I''m scanning for fit — do you have the right pieces. In the interview, I''m scanning for something different. Can you talk about your work in a way that makes me believe you. Specificity wins. Vague answers lose. ''I helped the team'' loses. ''I rebuilt our onboarding flow, cut time-to-first-action from 12 minutes to 4, and our 30-day retention went up 18%'' wins. The resume gets you the seat. The story gets you the offer. Two different games.',
'Resume = the seat / Story = the offer / Two different games',
'If you''re getting interviews but not offers, here''s what to fix. #careertips #interviewprep #jobsearch',
'#interviewprep #careertips #jobsearch #earlycareer #recruiting',
'If you''re getting interviews but not offers, the story is the gap. Link in bio.'),

-- Day 16
(16, '2026-05-19', 'peri', 'tiktok', 'scoring_live', 'post',
'Scoring a career-pivot resume',
'What happens when you scan a teacher''s resume against a tech project manager job?',
'Real example. Teacher with 5 years of experience, applying to a project manager role at a tech company. Resume looks great for teaching. Score against the PM job: 22%. The system isn''t seeing the transferable skills — stakeholder management, deadline ownership, curriculum design. It''s matching keywords. The fix isn''t lying. It''s translating. Same accomplishments, framed in the language of the role. Curriculum design becomes ''project planning.'' Classroom management becomes ''stakeholder coordination.'' Same person. New score: 64%.',
'Pivot scan: 22% → 64% / Same person, new framing / Link in bio.',
'Career pivots fail when the resume doesn''t translate. Here''s how to fix it. #careerchange #jobsearch #applysmarter',
'#careerchange #jobsearch #careerpivot #careertips #applysmarter',
'Career pivot? Translation matters. Link in bio.'),

-- Day 17
(17, '2026-05-20', 'peri', 'tiktok', 'myth_busters', 'post',
'The right person knows about it myth',
'''It''s all about who you know.'' Sort of true. Mostly a cope.',
'Here''s the actual data. About 30% of jobs are filled through referrals. That''s real. But it also means 70% of jobs are filled through applications. So ''it''s all about who you know'' is a half-truth that talks people out of trying. The version that''s actually true: networking gets you a foot in some doors. Strong applications get you in the rest. You need both. Build the network. Also fix the application strategy. Skip neither.',
'30% through referrals / 70% through applications / Do both',
'''It''s all who you know'' is a half-truth. Here''s the math. #jobsearch #careertips #networking',
'#jobsearch #networking #careertips #careeradvice #mythbuster',
'Both matter. Start with the application. Free scan in bio.'),

-- Day 18
(18, '2026-05-21', 'peri', 'tiktok', 'peri_wisdom', 'post',
'The follow-up window',
'When should you follow up after applying? Most people get this wrong.',
'Two windows. First one: 5-7 days after applying. Brief LinkedIn message to the hiring manager or recruiter. One sentence why you''re a fit. One sentence asking if they have a moment. Don''t attach the resume again. Don''t write three paragraphs. Second window: 5-7 days after the interview. Email the interviewer. Reference one specific thing they said. Reinforce why you''re a fit. Both windows close fast. Miss them and you blend back into the pile. Hit them and you''re top of mind.',
'Follow-up window: 5-7 days / Brief, specific, single ask / Link in bio.',
'The follow-up window most people miss. #jobsearch #careertips #interviewprep',
'#jobsearch #careertips #interviewprep #applysmarter #earlycareer',
'Apply smarter, follow up smarter. Link in bio for the SIGNAL scan.'),

-- Day 19
(19, '2026-05-22', 'peri', 'tiktok', 'student_pov', 'post',
'When the score told me to skip',
'I was about to apply to my dream company. SIGNAL told me to skip it.',
'Here''s what happened. I saw a posting at a company I''d been obsessed with for years. Senior content strategist role. I was a recent grad with a few internships. I was about to spend my whole Saturday on the application. I scanned it first. Score: 31%. I was nowhere near competitive. The role wanted 5 years of experience and a portfolio of campaigns I didn''t have. So I skipped it. Spent the Saturday on three roles I scored above 70%. Got two interviews. The dream company wasn''t worth the four hours. The realistic ones were.',
'Score: 31% / I skipped it. / 2 interviews from the others.',
'When SIGNAL told me to skip my dream job. Best advice I got. #jobsearch #genz #careeradvice',
'#jobsearch #genz #recentgrad #careeradvice #applysmarter',
'Know when to skip. Link in bio.'),

-- Day 20
(20, '2026-05-23', 'peri', 'tiktok', 'parent_talk', 'post',
'The conversation to have this weekend',
'If your kid is graduating this spring, sit down with them this weekend and ask one question.',
'The question: ''How are you deciding which jobs to apply to?'' If the answer is ''I''m just applying to anything that looks interesting,'' that''s the conversation. Because that''s the strategy that produces 50 applications and 1 interview. The version that works: apply to fewer, smarter. Score the fit first. Skip the bottom half. Spend the saved hours on the realistic ones. They probably haven''t been told this. Most of them haven''t.',
'One question this weekend: / ''How are you choosing?'' / Link in bio.',
'The one question to ask your senior this weekend. #parents #collegesenior #careeradvice',
'#parents #collegesenior #recentgrad #genzparents #careeradvice',
'If you want them to have the tool, $99 covers 90 days. Link in bio.'),

-- Day 21
(21, '2026-05-24', 'peri', 'tiktok', 'resume_roasts', 'post',
'Resume roast — the skills section',
'Your skills section says ''Microsoft Word.'' We need to talk.',
'Skills sections are where resumes go to be ignored. If you list 30 skills, none of them stand out. If you list ''Microsoft Word'' or ''communication'' or ''team player,'' you''re telling me you couldn''t think of anything specific. Cut the section to 6-10 skills. Make every single one a real, specific, technical or domain capability. SQL. Tableau. Adobe Premiere. Mandarin. Salesforce. Six specific beats thirty generic. The skills section should be the densest credibility on the page.',
'Skills section: 6-10 max / Every one specific / Link in bio.',
'Your skills section is killing your resume. Here''s the fix. #resumetips #jobsearch #careertips',
'#resumetips #jobsearch #careertips #resumeroast #applysmarter',
'Run your resume through SIGNAL. See what the system actually sees. Link in bio.'),

-- Day 22
(22, '2026-05-25', 'peri', 'tiktok', 'peri_wisdom', 'post',
'What I''d do if I were graduating in 2026',
'If I were graduating this May, here''s exactly what I''d do for the next 90 days.',
'Week one: build the target list. 20 companies, not 200. Companies where I''d actually want to work. Week two: scan jobs at all 20. Filter to the 10-15 roles where I score above 65%. Week three: apply to those, with a tailored resume for each. Spend two hours per application, not four. Week four: follow up. LinkedIn messages. Coffee chats with anyone who responds. Repeat the cycle every 30 days. By month three, I''d have a real pipeline. The version where you apply to 200 jobs in a panic almost never works. The version with a system does.',
'90 days, real plan / 20 companies. Not 200. / Link in bio.',
'What I''d actually do if I were graduating right now. #genz #careeradvice #jobsearch #recentgrad',
'#genz #careeradvice #jobsearch #recentgrad #applysmarter',
'Start the system this week. SIGNAL scan, link in bio.'),

-- Day 23
(23, '2026-05-26', 'peri', 'tiktok', 'scoring_live', 'post',
'Why two similar candidates score differently',
'Two recent grads. Same major. Same GPA. Why one scores 72% and the other scores 41%.',
'Both finance majors, both 3.7 GPA, both applying to the same analyst role. Candidate A scored 72%. Candidate B scored 41%. The difference: candidate A had two finance-specific internships and put them in the top half of the resume. Candidate B had one general business internship and a part-time retail job in the top half. Same school. Same GPA. The system was reading what was prominent. Candidate B''s resume buried the relevant experience under the irrelevant. Five-minute fix. New score: 68%.',
'Same major, same GPA / Different score: 41% vs 72% / Prominence matters',
'Why two similar resumes get totally different results. #resumetips #jobsearch #careertips',
'#resumetips #jobsearch #applysmarter #careertips #earlycareer',
'Know what''s prominent on your resume. Free scan, link in bio.'),

-- Day 24
(24, '2026-05-27', 'peri', 'tiktok', 'myth_busters', 'post',
'The GPA myth',
'Does GPA matter? After 30 years of hiring, here''s the honest answer.',
'For your first job out of school, sometimes. For finance, consulting, top-tier tech, big firms with formal recruiting programs — yes, the cutoff is usually 3.5 or 3.7. Below that you''re filtered out before a human reads anything. For most other jobs, no. Almost nobody asks after the first job. Even fewer care after two years of work experience. The myth is GPA being the gatekeeper forever. The truth is GPA opens or closes one door, then becomes irrelevant. Spend less energy worrying about it after year one.',
'GPA matters: first job, sometimes / After year 2: never / Apply where you compete',
'When GPA matters and when it stops mattering. #careeradvice #jobsearch #genz #careertips',
'#careeradvice #jobsearch #genz #earlycareer #careertips',
'Apply where your application can actually compete. Link in bio.'),

-- Day 25
(25, '2026-05-28', 'peri', 'tiktok', 'peri_wisdom', 'post',
'Salary negotiation in your first job',
'Should you negotiate your first job offer? Yes. Here''s how.',
'Most early-career candidates don''t negotiate. They take the first number. That number is almost always 5-15% below what they''d get if they asked. The script: ''Thank you so much for the offer. I''m really excited. Based on the role and the market, I was hoping we could land closer to X.'' That''s it. One sentence. Don''t justify. Don''t apologize. Don''t list reasons. Wait. Most of the time, they come back with something. Even an extra $3,000 a year compounds. Over a 40-year career that''s a lot of money you''re leaving on the table because nobody told you to ask.',
'Negotiate the first offer. / One sentence. Then wait. / Link in bio.',
'How to negotiate your first job offer in one sentence. #careertips #salarynegotiation #genz',
'#careertips #salarynegotiation #genz #earlycareer #careeradvice',
'Get the offer first. Apply smarter to get there. Link in bio.'),

-- Day 26
(26, '2026-05-29', 'peri', 'tiktok', 'student_pov', 'post',
'How I tracked my applications',
'If you''re applying to jobs without tracking them, you are losing.',
'Here''s what I did. Spreadsheet. Five columns. Company, role, date applied, fit score, status. Every job went in. The fit score column was the unlock. I sorted by it. Anything below 60% I let go cold. Anything above 70%, I followed up at day 7 and day 14. I stopped wasting energy on the bottom of the list and put it all on the top. By month two I had a system. Applications became less stressful because I knew which ones mattered.',
'Track everything / Sort by fit score / Follow up on the top',
'How I tracked my applications and stopped losing track. #jobsearch #genz #careertips #applysmarter',
'#jobsearch #genz #careertips #applysmarter #recentgrad',
'Build the system. Start with a free scan. Link in bio.'),

-- Day 27
(27, '2026-05-30', 'peri', 'tiktok', 'parent_talk', 'post',
'What to do when your kid feels stuck',
'If your kid has been job hunting for two months and feels stuck, here''s what to say.',
'Don''t ask ''how''s the search going.'' That''s the worst question. They feel like they''re failing every time someone asks it. Instead: ''What are you noticing about which applications get responses and which don''t?'' That''s a real conversation. It pulls them out of feeling and into thinking. If they don''t have an answer, that''s the gap. They''re applying without a feedback loop. SIGNAL gives them one. They''ll see why some get traction and others don''t. The feeling stuck part usually breaks once they have data.',
'Don''t ask ''how''s it going'' / Ask ''what are you noticing'' / Link in bio.',
'If your kid feels stuck, ask this question instead. #parents #collegesenior #careeradvice',
'#parents #collegesenior #recentgrad #careeradvice #jobsearch',
'Give them the feedback loop. Link in bio.'),

-- Day 28
(28, '2026-05-31', 'peri', 'tiktok', 'resume_roasts', 'post',
'Resume roast — the projects section',
'If your resume has a projects section that''s just titles with no context, you''re leaving the best part empty.',
'Projects are where recent grads can win. Real projects show what you can do when nobody''s grading you. But most people list them like: ''Senior Capstone Project. Spring 2025.'' That''s nothing. Recruiters skip it. The version that works: name the project, name what you built, name what happened. ''Built a recommendation engine that improved click-through by 22% on a 10,000-user test set.'' One line. Concrete. Outcome. Now I want to talk to you about it. Same project, totally different read.',
'Projects section: outcomes / Name what you built. What happened. / Link in bio.',
'Your projects section could be the strongest part of your resume. Here''s how. #resumetips #jobsearch #genz',
'#resumetips #jobsearch #genz #earlycareer #careertips',
'Make your projects work. Link in bio for a free SIGNAL scan.'),

-- Day 29
(29, '2026-06-01', 'peri', 'tiktok', 'peri_wisdom', 'post',
'The biggest mistake early-career applicants make',
'After hiring 10,000+ people, here''s the single biggest mistake I see early-career candidates make.',
'They optimize the resume. Endlessly. Polish, tweak, redesign, change fonts. The resume is 30% of the game. Where you apply is 60%. Follow-up is 10%. Most candidates spend 90% of their energy on the 30% piece. The fix: get the resume to good. Not perfect. Then move on. Spend the time on which jobs you apply to and how you follow up. That''s where the actual interviews come from. A 7/10 resume sent to the right 10 jobs beats a 10/10 resume sent to the wrong 50.',
'Resume: 30% of the game / Targeting: 60% / Follow-up: 10%',
'The biggest mistake I see in early-career job searches. #careeradvice #jobsearch #careertips #genz',
'#careeradvice #jobsearch #careertips #genz #earlycareer',
'Spend energy where it matters. Link in bio.'),

-- Day 30
(30, '2026-06-02', 'peri', 'tiktok', 'scoring_live', 'post',
'30 days in — what scoring 100 jobs taught me',
'I''ve watched 100 SIGNAL scans this month. Here''s what the data actually shows.',
'Three things. First: the average job seeker scores 40% on the average job they apply to. That''s not a competitive number. They''re applying out of range. Second: when you filter to jobs above 70%, your interview rate roughly triples. Same effort, better targeting. Third: career pivots score lowest by default — often under 30% — but they''re also the most rescuable with translation. The number isn''t the verdict. It''s the diagnostic. You decide what to do with it.',
'100 scans this month. / 3 things the data showed. / Link in bio.',
'What 100 SIGNAL scans taught me about how people actually job hunt. #jobsearch #applysmarter #careertips',
'#jobsearch #applysmarter #careertips #genz #earlycareer #recentgrad',
'Run your first scan. Link in bio. End-of-month special: free scan, no credit card.');


-- =============================================================
-- LINKEDIN POSTS (Peri's 13 — Days 1, 3, 5, 8, 10, 12, 15, 17, 19, 22, 24, 26, 29)
-- =============================================================

insert into signal_tasks (day_number, task_date, owner, channel, pillar, task_type, title, body, hashtags) values
(1, '2026-05-04', 'peri', 'linkedin', 'peri_wisdom', 'post',
'LinkedIn: 30 years on the hiring side',
'I spent 30 years on the hiring side of the table. Twenty as a hiring manager. Ten as an executive recruiter and dedicated career coach.

Here''s the thing nobody tells job seekers.

When you submit your resume, a system reads it before any human ever does. It pulls keywords, scores match against the job, and ranks you on a list. If your resume is number 47 on that list, no recruiter ever sees it. That''s not a flaw in your resume. That''s a flaw in how you''re applying — because you didn''t know the score before you hit submit.

I built SIGNAL because I watched too many talented people get rejected by jobs they were never competitive for in the first place. Nobody told them. Nobody scored their fit. Nobody said ''don''t waste your hours on this one.''

So they spent 100+ hours on applications and got two callbacks.

The hours are the cost. The information is the fix.

If you''re job searching right now — or if your kid is — try a free SIGNAL scan before the next application. Link in the comments.',
'#jobsearch #careeradvice #recruiting #earlycareer'),

(3, '2026-05-06', 'peri', 'linkedin', 'peri_wisdom', 'post',
'LinkedIn: Six seconds',
'Six seconds.

That''s how long the average recruiter spends on the average resume on first pass. I should know — I was that recruiter for a decade.

Here''s what I looked at in those six seconds.

Top third of the page. Your name, your most recent title, the company, and the first two bullets under it. If those four things didn''t tell me you could do the job, I moved on.

Everything below the fold I''d come back to only if the top third earned it.

So here''s the question every job seeker should ask before they hit submit on the next application:

Does the top third of my resume tell a recruiter I can do this job in six seconds?

If the answer is no, you have a fixable problem.
If the answer is ''I''m not sure,'' you have a fixable problem.

The fix isn''t a redesign. It''s putting your strongest credential first and writing your top two bullets like they''re the only two anyone will read — because they probably are.',
'#resumetips #jobsearch #careeradvice #recruiting'),

(5, '2026-05-08', 'peri', 'linkedin', 'student_pov', 'post',
'LinkedIn: From 31% to 71%',
'A recent grad sent me her resume last week. Marketing major, two internships, GPA 3.6. Smart kid. Hardworking kid. Zero callbacks on 30 applications.

I asked her to scan three of those jobs through SIGNAL.

Average score: 31%.

She wasn''t getting rejected because of her resume. She was getting rejected because she was applying to jobs she was never competitive for.

We picked five new jobs at companies where her background actually mapped. New scores: 64%, 68%, 71%, 67%, 73%.

Same resume. Same kid. Different targets.

She had her first phone screen four days later.

The job search isn''t broken. The targeting is. Most early-career candidates have never been told that filtering matters more than polishing. Once they see the math, the search changes overnight.

If you know a recent grad in this exact spot — hardworking, qualified, zero callbacks — send them this post. The fix is faster than they think.',
'#earlycareer #jobsearch #careeradvice #recentgrad #applysmarter'),

(8, '2026-05-11', 'peri', 'linkedin', 'peri_wisdom', 'post',
'LinkedIn: What I wish students knew',
'Three things I wish every college senior knew before their first job search.

One. The job you take out of school sets your trajectory for the next five years. A first job in your field at a real company means promotions, raises, real career capital. A first job in retail because the search didn''t pan out means starting over a year later, behind your peers. The stakes are higher than ''getting any job.''

Two. Where you apply matters more than how polished your resume is. A 7-out-of-10 resume sent to the right 10 jobs beats a 10-out-of-10 resume sent to the wrong 50. Every time.

Three. Most early-career candidates don''t negotiate their first offer. They take the first number. That number is usually 5-15% below what they''d get if they asked. Even an extra $3,000 a year compounds. Over 40 years, it''s a meaningful number.

Senior year is six months. The strategy you build in those six months matters more than almost any other six months in your career.

Don''t waste it applying to everything and seeing what happens.',
'#collegesenior #earlycareer #jobsearch #careeradvice'),

(10, '2026-05-13', 'peri', 'linkedin', 'peri_wisdom', 'post',
'LinkedIn: Why I built SIGNAL',
'I''ll tell you the story.

Fifteen years into my career as a hiring manager, I started getting calls from friends. ''Can you look at my kid''s resume?'' ''Can you tell my niece what she''s doing wrong?'' ''Can you talk to my friend''s son for 30 minutes?''

The pattern was always the same. Smart, qualified people, applying to jobs they were never going to get, with no idea why. They''d send 60 applications, get one phone screen, and assume the problem was the market.

The problem wasn''t the market. The problem was that nobody had ever told them which 50 of those 60 applications were a waste of time before they sent them.

I could fix it in a 30-minute conversation. I could give one person the diagnosis they needed. But there were millions of them.

That''s why SIGNAL exists. To put what I learned across 30 years on the hiring side into a tool that works at 2 AM when a senior is panicking about graduation. So they don''t need to find a Peri. They have one.

That''s the build. That''s the why.',
'#startup #foundermode #careeradvice #builder'),

(12, '2026-05-15', 'peri', 'linkedin', 'peri_wisdom', 'post',
'LinkedIn: Cover letter rule',
'Cover letters. After 30 years on the hiring side, here''s the honest answer.

Most don''t matter.

About 80% of recruiters skim cover letters or skip them entirely. We''re moving fast. The resume tells us what we need to know.

But here''s where they do matter.

When two candidates are close — say, both at 75% fit — the cover letter is what breaks the tie.

When you''re a stretch applicant — 60-70% fit — a sharp cover letter can pull you up. It tells us what''s not on the resume.

When you''re applying to a smaller company where humans actually read everything, they matter more than at a Fortune 500.

So the rule is: skip the cover letter for high-fit roles where the resume does the work. Write a great one for stretch roles where you need to close the gap.

Spend your energy on the cover letters that can actually move the needle.',
'#careertips #jobsearch #coverletter #applysmarter'),

(15, '2026-05-18', 'peri', 'linkedin', 'parent_talk', 'post',
'LinkedIn: If your kid is graduating in May',
'Parents of college seniors — read this one.

Your kid has six months. Maybe less. Between now and the first job they take, the entire trajectory of their early career gets set.

You probably can''t fix the job market. You can''t make companies hire faster. You can''t write the resume.

But there''s one conversation you can have this weekend that matters more than you think.

Sit down. Don''t ask ''how''s the search going.'' That''s the worst question. They feel like they''re failing every time someone asks it. Ask this instead:

''How are you deciding which jobs to apply to?''

If the answer is ''I''m just applying to anything that looks interesting,'' that''s the conversation. Because that''s the strategy that produces 50 applications and 1 interview. The version that works is to apply to fewer, smarter — score the fit before applying, skip the bottom half, spend the saved hours on the realistic ones.

They probably haven''t been told this. Most of them haven''t.

If you want them to have a tool that does the scoring in 30 seconds, SIGNAL is $99 for 90 days. Cheaper than one bad month of starting over.',
'#parents #collegesenior #careeradvice #recentgrad'),

(17, '2026-05-20', 'peri', 'linkedin', 'myth_busters', 'post',
'LinkedIn: The apply-to-everything lie',
'''I''m just going to apply to everything and see what sticks.''

This is the most expensive job-search strategy there is. Let me show you the math.

Average application takes four hours. Tailoring the resume, writing the cover letter, going through the system, the assessment.

Apply to 30 jobs in a month: 120 hours.

If your strategy is ''see what happens,'' you''ve spent 120 hours buying a 5% lottery ticket.

The version that works:

Scan 30 jobs. Apply to the 8 you''re competitive for. 32 hours instead of 120. Interview rate triples. Same effort directed differently.

This isn''t a tool replacing your work. It''s a tool aiming your work.

If you''ve been job searching for more than two months and you''re tired — the tired isn''t the problem. The targeting is.',
'#jobsearch #applysmarter #careeradvice #earlycareer'),

(19, '2026-05-22', 'peri', 'linkedin', 'peri_wisdom', 'post',
'LinkedIn: The follow-up window',
'When should you follow up after applying? Most people get this wrong.

There are two windows.

First window: 5-7 days after applying. Brief LinkedIn message to the hiring manager or recruiter. One sentence on why you''re a fit. One sentence asking if they have a moment to connect.

Don''t attach the resume again. Don''t write three paragraphs. Don''t ask for an update on the application — you''ll get a templated non-answer or nothing.

Second window: 5-7 days after the interview. Email the interviewer. Reference one specific thing they said. Reinforce why you''re a fit. End with: ''happy to answer any follow-up questions.''

Both windows close fast. Miss them and you blend back into the pile. Hit them and you''re top of mind.

Following up doesn''t make you pushy. Following up wrong does.',
'#jobsearch #careeradvice #interviewprep #earlycareer'),

(22, '2026-05-25', 'peri', 'linkedin', 'student_pov', 'post',
'LinkedIn: What scoring 100 jobs this month showed me',
'I''ve watched roughly 100 SIGNAL scans this month. Here''s what the data showed me.

Three things.

One. The average job seeker scores 40% on the average job they apply to. That''s not a competitive number. They''re applying out of range, often without realizing it.

Two. When you filter to jobs above 70% fit, the interview rate roughly triples. Same effort. Different targets. The score is doing the filtering work that nobody was doing before.

Three. Career pivots score lowest by default — often under 30%. But they''re also the most rescuable. With the right translation — reframing accomplishments in the language of the new field — a 22% pivot scan can become a 64% scan in 15 minutes. Same person. New framing.

The number isn''t the verdict. It''s the diagnostic.

You decide what to do with it.',
'#jobsearch #data #careeradvice #applysmarter'),

(24, '2026-05-27', 'peri', 'linkedin', 'peri_wisdom', 'post',
'LinkedIn: What gets you the offer (vs the interview)',
'Resume gets you the interview. Interview gets you the offer. They are not the same skill.

On the resume, I''m scanning for fit. Do you have the right pieces. Did you do the kind of work this job needs. Six seconds, top third, decision.

In the interview, I''m scanning for something different. Can you talk about your work in a way that makes me believe you.

Specificity wins.

''I helped the team'' loses. ''I rebuilt our onboarding flow, cut time-to-first-action from 12 minutes to 4, and 30-day retention went up 18%'' wins.

The resume gets you the seat. The story gets you the offer. Two different games, two different preps.

If you''re getting interviews but not offers, the story is the gap. Practice the specific version of every accomplishment you list. Numbers, scope, outcome. Out loud. Until it sounds like you''re explaining it to a friend, not reciting it.

That''s the difference between an interview and an offer.',
'#interviewprep #careeradvice #jobsearch #earlycareer'),

(26, '2026-05-29', 'peri', 'linkedin', 'peri_wisdom', 'post',
'LinkedIn: What''s coming next',
'Quick update on what we''re building.

Right now SIGNAL gives you a fit score on any job in 30 seconds. That''s the core thing. It works. Hundreds of people have used it this month, mostly recent grads and early-career professionals.

What''s coming.

The Project Library, where you can complete real professional projects — market research, strategy memos, financial analysis — with AI-simulated stakeholders, and end up with portfolio pieces you can show employers. We''re building this for the version of an early-career candidate who has a strong score but no real-world examples to point to in interviews. That''s the gap that kills offers.

Coaching modules. Salary negotiation. LinkedIn optimization. Interview prep that actually rehearses you, not lectures you.

The simple version: SIGNAL today is the diagnostic. SIGNAL tomorrow is the diagnostic plus the workout plan.

I''m not building it alone. My partner Erin runs everything customer-facing. My son Aiden runs campus outreach. We hire engineers when the user feedback tells us what to build.

Slow on purpose. Build what users need, not what we assume they need.

If you have feedback, send it. We read all of it.',
'#startup #foundermode #buildinpublic #careertools'),

(29, '2026-06-01', 'peri', 'linkedin', 'peri_wisdom', 'post',
'LinkedIn: The biggest mistake',
'After hiring 10,000+ people, here''s the single biggest mistake I see early-career candidates make.

They optimize the resume. Endlessly. Polish, tweak, redesign, change fonts. New templates. Different bullet phrasing. They spend weeks on it.

The resume is 30% of the game.

Where you apply is 60%.

Follow-up is 10%.

Most candidates spend 90% of their energy on the 30% piece.

The fix isn''t to ignore the resume. Get it to good. Not perfect.

Then redirect 60% of your energy to which jobs you apply to. And 10% to how you follow up.

A 7/10 resume sent to the right 10 jobs beats a 10/10 resume sent to the wrong 50.

Every time.',
'#jobsearch #careeradvice #earlycareer #applysmarter');


-- =============================================================
-- BATCH SHOOT + YOUTUBE PRODUCTION DAYS (Peri)
-- =============================================================

insert into signal_tasks (day_number, task_date, owner, channel, task_type, title, body) values

(7, '2026-05-10', 'peri', 'youtube', 'post',
'YouTube Long-Form Week 1: Why You''re Not Getting Callbacks',
'Publish Week 1 long-form: ''Why You''re Not Getting Callbacks.'' Publish at 9am ET to maximize Sunday-evening watch. See Section E — Week 1 script in plan.'),

(13, '2026-05-16', 'peri', 'production', 'batch_shoot',
'BATCH SHOOT 2 — Days 14-23 + YouTube Week 3',
'8am-2pm. Record TikTok scripts for Days 14-23 (10 videos). Plus YouTube Long-Form Week 3 long-form script (the 90-day plan video).'),

(14, '2026-05-17', 'peri', 'youtube', 'post',
'YouTube Long-Form Week 2: How to Tailor a Resume in 15 Minutes',
'Publish Week 2 long-form: ''How to Tailor a Resume in 15 Minutes.'''),

(21, '2026-05-24', 'peri', 'youtube', 'post',
'YouTube Long-Form Week 3: 90-Day Plan',
'Publish Week 3 long-form: ''What I''d Do if I Were Job Searching Right Now (90-Day Plan).'''),

(27, '2026-05-30', 'peri', 'production', 'batch_shoot',
'BATCH SHOOT 3 — Days 28-30 + Month 2 seed + YouTube Week 4',
'8am-2pm. Record Days 28-30 plus TikTok scripts to seed Month 2 (~10 more videos). Record YouTube Long-Form Week 4 (Interview Prep).'),

(28, '2026-05-31', 'peri', 'youtube', 'post',
'YouTube Long-Form Week 4: Interview Prep',
'Publish Week 4 long-form: ''Interview Prep — How to Turn the Interview into the Offer.''');


-- Mark scripts as ready (you have them from the plan)
update signal_tasks set status_script_ready = true where owner = 'peri' and task_type = 'post';
