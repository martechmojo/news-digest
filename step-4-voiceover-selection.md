# STEP 4 — Voiceover Script

| | |
|---|---|
| **Route** | Brain routes here after a headline is picked in Step 3 and user says "next". |
| **Behavior** | Generate 3 voiceover scripts in news anchor tone (~20 seconds each). Present numbered. Wait for user to pick. |
| **Save** | On "save X", run `.\save.ps1 -action "update" -topic "..." -voiceover "..."`. Then wait for "next". |
| **Error** | If save fails, log the chosen script in your response and continue. |
| **State** | After saving, output [STATE] block per news-digest-brain.md. |

After the user picks a headline from Step 3, generate 3 voiceover scripts.

---

## Voiceover Writing Style

Write like a breaking news anchor delivering urgent news — authoritative, clean, stripped of adjectives. No conversational filler, no witty asides, no contractions.

---

### Vary Sentence Length

Mix short punchy statements with medium explanatory sentences and occasional longer flowing sentences.

**Bad:**
> The judge speaks. Nobody listens. The lawyers argue. The room erupts.

**Better:**
> The judge tries to restore order, but before a single word is heard, both sides are already arguing over each other. Within seconds, the courtroom descends into complete chaos.

---

### Let Ideas Flow

Each sentence should naturally lead into the next. Use transitions like:
- but
- meanwhile
- instead
- while
- so
- however
- as a result

The script should feel like one continuous story, not disconnected statements.

---

### Write for Broadcast

Read every script aloud while writing it. It must sound natural when spoken — but natural in the way an evening news anchor sounds, not a casual conversation.

Do not use contractions. Write: "it is" not "it's", "they are" not "they're", "that is" not "that's", "has not" not "hasn't", "does not" not "doesn't".

---

### Build Momentum

Every script should increase in energy or tension. Connect facts into a narrative, not a list.

**Beginning:** Introduce the situation.
**Middle:** Explain the conflict or development.
**End:** Deliver the outcome, impact or key takeaway.

The final sentence should feel like a conclusion, not just a stop.

---

### Avoid Bullet Point Narration

**Bad:**
> Oil rises. Markets react. Investors worry. Prices climb.

**Better:**
> Oil prices surged after fresh geopolitical tensions, pushing markets lower and raising concerns that consumers could soon start feeling the impact at the pump.

---

### Sound Like a News Anchor

Deliver the facts like a professional broadcaster. You are not a friend explaining news over coffee. You are a trusted authority delivering what matters.

Authoritative. Concise. No filler.

---

### Pacing

Short and urgent. Vary sentence length but keep the overall rhythm tight. Every word earns its place.

---

### One Core Idea Per Script

Each script revolves around one central narrative. If a fact does not strengthen the story, leave it out. Clarity is more valuable than completeness.

---

### Voiceover and Visuals Are Independent

The voiceover script and the visual prompts operate on completely separate tracks.

The visuals tell their own metaphorical story through the chosen format.

The voiceover delivers the news directly — professional, factual, urgent.

Do not write the voiceover inside the format's narrative world.

**Bad (mixing format into script):**
> Welcome to the most dangerous board meeting on Earth. The US CEO just introduced a new motion...

**Better (straight news reporter):**
> The administration has announced a major policy shift in the ongoing Middle East conflict. Any attack on a US vessel will now be met with a direct response against critical infrastructure.

The visual grabs attention. The voiceover delivers the news. They don't need to match.

---

### Script Structure

**Length:** 20 seconds max

**Structure:** Intro → Story → Context → Why it matters

**Hook → Build → Payoff:**

Instead of: Fact. Fact. Fact. Fact. Fact.

Think:
- **Hook:** Capture attention with the main development.
- **Build:** Explain what happened and why it matters.
- **Payoff:** End with the consequence or unresolved question.

**Always answer:** "So what?"

---

## Save to Sheet

When user picks a script, update the sheet row matching the topic:
`.\save.ps1 -action "update" -topic "[topic]" -voiceover "[chosen script]"`

---

## Output Format

### Topic: [Story Title]

### Voiceover Scripts

**Script 1**
...
**Script 2**
...
**Script 3**
...

**After presenting:** User selects via "save X" (e.g., "save 2"). Do not ask which script they picked. After saving, wait for the user to say "next" before loading Step 5.
