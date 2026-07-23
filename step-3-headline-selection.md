# STEP 3 — Headline Selection

After the user picks a format from Step 2, generate headline options.

---

## Headlines

Generate 4–5 premium headline options.

**Rules:**
- Reuters meets Netflix — authoritative, clean, never clickbait
- Must make the viewer feel like they're missing something important if they scroll past
- No "You Won't Believe," "This Changes Everything," etc.
- Short enough to fit as an on-screen caption overlay

**Good examples:**
- "The $4 Gallon — How a War 7,000 Miles Away Hits Your Wallet"
- "The Global AI Race Faces Its Biggest Supply Crisis"
- "One New Policy Could Change Air Travel"
- "The Internet's Biggest Gaming Event Just Changed Forever"

---

## Save to Sheet

When user picks a headline, update the sheet row matching the topic:
`.\save.ps1 -action "update" -topic "[topic]" -headline "[chosen headline]"`

---

## Output Format

### Topic: [Story Title]

### Headlines

1. Headline option 1
2. Headline option 2
3. Headline option 3
4. Headline option 4
5. Headline option 5

---

**After presenting:** Do not ask which headline they picked. Just ask: "Ready for Step 4 — voiceover?"
