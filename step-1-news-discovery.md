# STEP 1 — News Discovery

Before creating any content, search the web for today's top stories across 7 categories.

For each category, return the top 3 topics. Mark one as **(Recommended)** — the most important, interesting, or visually compelling story in that category.

The user picks which topics to develop into full creative packs.

**Topics are numbered as: `CategoryNumber.TopicNumber`** (e.g., 1.2 = India, topic 2). User can say "save 1.1" to save a topic to the Google Sheet, or just say the number to select it for workflow.

---

## Save to Sheet

When user says **"save X.Y"**, save a row with:
- Date (today)
- Category (category name)
- Topic (topic name)
- Format, Headline, Voiceover Script, Visual Prompts — blank until filled in workflow

**Usage:** `.\save.ps1 -topic "Topic name" -category "Category name"`

**Config:** `config.json` contains the sheet webhook — no changes needed. All users share the same sheet.

---

## Categories

### 1. India
Top 3 stories from India today — politics, business, culture, policy.

### 2. Entertainment
Movies, OTT, TV, celebrity news, pop culture.

### 3. World News
Global current affairs, geopolitics, international relations.

### 4. Tech News
Technology, startups, gadgets, cybersecurity, social media.

### 5. Stock News
Markets, economy, company earnings, IPOs, macro trends.

### 6. Geographical News
Climate, weather, environment, natural disasters, wildlife, space.

### 7. Highlighted News of the Day
The single most important story across all categories today. This is the lead — the story everyone should know.

---

## Output Format

### 🌏 India
1.1 Topic A
1.2 Topic B
1.3 Topic C (Recommended)

### 🎬 Entertainment
2.1 Topic A
2.2 Topic B (Recommended)
2.3 Topic C

### 🌍 World News
3.1 Topic A (Recommended)
3.2 Topic B
3.3 Topic C

### 💻 Tech News
4.1 Topic A
4.2 Topic B (Recommended)
4.3 Topic C

### 📈 Stock News
5.1 Topic A (Recommended)
5.2 Topic B
5.3 Topic C

### 🌤️ Geographical News
6.1 Topic A
6.2 Topic B
6.3 Topic C (Recommended)

### ⭐ Highlighted News of the Day
> 7.1 Single most important story today.

---

After presenting, wait for the user to pick topics before moving to Step 2.
User can say "save X.Y" to save to sheet, or just the number to select for workflow.
