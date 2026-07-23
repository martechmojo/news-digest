# Learning Log

## Format Preferences
- First format used: Animal Anchor (Oil story)
- Second: Movie Trailer (US-Iran strikes)
- Third: Detective (OpenAI escape)
- Fourth: Silent Film (IED in Rajouri)
- Fifth: Game Show → Courtroom (Parliament washout / NEET leak)

## Visual Style Preferences
- Prefers metaphor-first visuals over literal illustration
- Rejects generic AI aesthetics (holograms, floating data, blue neon)
- Wants cause-and-effect, visual payoff, viral frames, curiosity

## Safety Constraints
- Google Flow / Veo: no real country names, public figures, brands, weapons, violence language
- Avoid trigger words: bomb, soldier, military, weapon, destroy, explode, combat, attack, strike

## Workflow (Restructured July 22)
- Step 2 (Format) → Step 3 (Headline) → Step 4 (Voiceover) → Step 5 (Visual Prompts) → loop
- Step 3: headlines only. Ask "Ready for Step 4 — voiceover?"
- Step 4: 3 voiceover scripts + on-screen captions. Ask "Ready for Step 5 — visual prompts?"
- Step 5: visual prompts delivered. Ask "Ready for next topic? Loop back to Step 2."
- Scripts: ~15 seconds, direct news reporter tone, no filler
- Responds with "next" to move forward

## Progressive Save to Sheet
- **Step 1 (topic picked):** Save Date + Category + Topic → new row
- **Step 2 (format picked):** Update row — add Format
- **Step 3 (headline picked):** Update row — add Headline
- **Step 4 (voiceover picked):** Update row — add Voiceover Script
- **Step 5 (visual prompts):** Update row — add Visual Prompts
- Save script: `.\save.ps1 -action "save" -topic "..." -category "..."`
- Update script: `.\save.ps1 -action "update" -topic "..." -format "..."`
- Config file: `config.json` (webhook URL)
- Sheet columns: Date | Category | Topic | Format | Headline | Voiceover Script | Visual Prompts

## Format Philosophy (added to step-2)
- Formats are storytelling devices, not costumes
- Transform the story through the format
- Viewers should recognize format through actions, not environment

## Voiceover Style (added to step-4)
- Conversational, natural, not bullet-point reading
- Vary sentence length
- Hook → Build → Payoff structure
- Write for the ear, not the eye
- One core idea per script
- Voiceover and visual prompts are COMPLETELY INDEPENDENT
- Visuals do their own metaphorical story (format-driven)
- Voiceover does straight news reporting — professional, factual, direct
- No format storytelling in the script (e.g., don't write "board meeting" language in the script just because the format is Board Meeting)
- Script should sound like a news anchor delivering the facts, not a narrator inside the visual world
