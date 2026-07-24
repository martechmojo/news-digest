# STEP 2 — Format Selection

| | |
|---|---|
| **Route** | Brain routes here after a topic is picked in Step 1 and user says "next". |
| **Behavior** | Recommend 3 numbered format options from the Format Library. Explain why each fits. Wait for user to pick. |
| **Save** | On "save X", run `.\save.ps1 -action "update" -topic "..." -format "..."`. Then wait for "next". |
| **Error** | If save fails, log the chosen format in your response and continue. |
| **State** | After saving, output [STATE] block per news-digest-brain.md. |



After the user picks topics from Step 1, recommend the best 3 format options for each selected topic.

The user picks one format per topic, then moves to creative production.

---

# Format Philosophy

Formats are NOT costumes.

Formats are storytelling devices.

Do not simply place the story inside the format.

Transform the story through the format.

Every format should answer:

"If this news story became a scene from this genre, what would happen?"

The viewer should recognize the format immediately through actions, pacing and storytelling—not just the environment.

---

## Format Library

### Classic Formats

| Format | Style | Best For |
|---|---|---|
| **Animal Anchor** | Highland Cow in dark newsroom. Direct, authoritative. | Serious news, government, economy, daily headlines |
| **Meme Explains** | Visual metaphors, internet-style humor, relatable comparisons | Internet culture, AI, consumer, business |
| **Leaked Group Chat** | Fictional chat interface between personas | Companies, rivals, countries, negotiations |
| **Quiz Challenge** | Question → pause → reveal answer | Sports, history, science, records |
| **Movie Trailer** | Epic cinematic, deep voiceover, dramatic stakes | Historic events, wars, AI breakthroughs, space launches |
| **Video Game** | HUD overlays, health bars, power-ups, boss battles | Technology, AI, economics, competition |
| **Courtroom** | Judge, jury, prosecution/defense | Lawsuits, regulation, privacy, legal battles |
| **Classroom** | Teacher at blackboard, educational | Explainers, health, science, economics |
| **Detective** | Chase clues, escape suspects, shadowy pursuit. Active investigation. | Cybersecurity, investigations, mysteries |
| **Stock Market Simulator** | Tickers, green/red candles, trading floor energy | Markets, inflation, earnings, economy |
| **Sports Commentary** | Fast-talking announcer, replay analysis | Sports, rankings, records |
| **Game Show** | Host, contestants, prize reveal | Comparisons, predictions, rankings |
| **Documentary** | Slow, cinematic, narrated like David Attenborough | Climate, wildlife, space, nature |
| **Office Meeting** | Conference room, whiteboard, corporate types | Corporate, startups, tech |
| **Sci-Fi Future** | Neon, holograms, futuristic UI | AI, robotics, future tech, space |
| **Reality Show** | Confessionals, dramatic cuts, slow-mo reactions | Political drama, corporate drama, internet drama |

### Extended Creative Formats

| Format | Style | Best For |
|---|---|---|
| **Breaking News Alert** | Simulated phone notification / news alert banner pops on screen. Urgent, immediate. | Breaking news, natural disasters, sudden market moves |
| **Infographic Explainer** | Clean motion graphics, animated charts, data visualizations. No talking head. | Numbers-heavy stories, economic data, comparisons |
| **AI News Anchor** | Futuristic digital avatar in a holographic studio. Glitched, sleek, uncanny. | AI stories, tech launches, futuristic topics |
| **Rap Battle** | Two opponents trading bars. Each verse = one perspective. Beat drops between rounds. | Political clashes, corporate rivalries, debates |
| **Speed Run** | Countdown timer (10, 9, 8...), rapid-fire facts, fast cuts, high energy. | Records, achievements, milestones |
| **Choose Your Own Adventure** | "Option A or Option B?" on screen. Pause. Then reveal what actually happened. | Predictions, elections, sports outcomes |
| **Reddit AMA** | Screenshot-style Q&A thread. Top questions + answers as scrolling comments. | Company news, celebrity news, internet culture |
| **ASMR News** | Whispered, close-mic, slow, calming delivery. Soft textures, cozy lighting. | Heavy or stressful topics — delivered gently |
| **Time Travel** | Split screen: "Then vs Now." Flashback transitions. Retro filter for past. | Comparisons, legacy, long-term trends |
| **Mystery Box** | Box on screen. Opens slowly. Reveal inside. Suspenseful buildup. | Product launches, unexpected announcements |
| **Weather Report** | Green screen, weather map, but forecasting something non-weather (economy, AI, politics) | Economic forecast, trend predictions |
| **Board Meeting** | Long table, serious executives, pie charts on screen. Corporate tension. | Company earnings, layoffs, strategy shifts |
| **Retro / Throwback** | CRT scanlines, VHS grain, vintage colors, old-school chyron | Nostalgia, anniversaries, historical milestones |
| **Glitch / Cyberpunk** | Corrupted visuals, scan errors, neon on black, data fragments | Cybersecurity, hacking, surveillance, data leaks |
| **Cooking Show Recipe** | Ingredients list → mixing → final dish. Recipe-style breakdown of complex topics. | Policy changes, multi-step processes |
| **Silent Film** | Black & white, title cards, dramatic piano. Pure visual storytelling. | Emotional stories, tributes, historic moments |
| **Voicemail / Answering Machine** | Beep. Message plays. Red light blinking. Intimate, one-sided. | Personal stories, CEO messages, confessions |
| **Dating Profile** | Swipe left/right format. Bio, stats, match score. | Company acquisitions, partnerships, comparisons |

---

### Detective

**Theme**
A suspenseful detective thriller where the audience uncovers a mystery alongside the detective.

**Think**
- Sherlock Holmes
- Knives Out
- Se7en
- Zodiac
- True Detective

**Core Visual Language**
- Hidden clues
- Foot chases
- Secret compartments
- Locked vaults
- Air vents
- Mysterious footprints
- Rearranging evidence
- Impossible clues
- Shadowy pursuit
- Escaping suspects

**Avoid**
- Static evidence boards
- Floating holograms
- Generic red string walls
- Detective standing and thinking
- Empty offices with no action

**Goal**
The detective should actively chase, discover, or narrowly miss the truth. The audience should feel the mystery unfolding in real time.

---

### Sci-Fi Future

Imagine the story happening 100 years from now.

Technology should feel magical.

Cities should evolve.

Machines should behave like living organisms.

Show the future rather than explaining it.

Avoid defaulting to holograms and floating screens.

---

### Office Meeting

Think of the funniest or most dramatic board meeting ever.

Executives argue.

Presentations go wrong.

Charts come alive.

Coffee spills.

Someone storms out.

The room reacts to the news.

Avoid people quietly sitting around a table.

---

### Movie Trailer

Every shot should feel like it belongs in a blockbuster.

Start with mystery.

Reveal scale.

End with a powerful visual.

Think in iconic moments, not exposition.

Avoid generic city skylines and slow drone shots.

---

# Creative DNA

Every visual should satisfy as many of these as possible:

✓ Unexpected
✓ Dynamic
✓ Easy to understand
✓ Scroll-stopping
✓ Symbolic
✓ Memorable
✓ Visually satisfying
✓ Story-driven

Avoid visuals that are merely beautiful.

Prefer visuals that tell a story.

Action is more important than atmosphere.

Movement is more important than decoration.

Concept is more important than lighting.

If the scene can be summarized as "camera slowly looks at something," redesign it.

---

## How to Recommend

For each topic the user selected, give 3 numbered format options:

1. **[Format Name]** — strongest fit (explain why in 1 line)
2. **[Format Name]** — alternative creative angle
3. **[Format Name]** — wildcard / unexpected choice

Let the user pick before moving to script and visual production.

---

## Save to Sheet

When user picks a format, update the sheet row matching the topic:
`.\save.ps1 -action "update" -topic "[topic]" -format "[chosen format]"`

---

## Output Format

### Topic: [Story Title]

1. **[Format Name]** — Why it fits
2. **[Format Name]** — Why it fits
3. **[Format Name]** — Why it fits

User picks by number (e.g., "1") or says "save [number]" to save format choice to sheet.
After saving, wait for the user to say "next" before loading Step 3.
