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
- Trigger words to avoid: fight, attack, strike, bomb, missile, soldier, military, war, weapon, blood, destroy, explode, combat

## Workflow
- Step 1 (News Discovery) → Step 2 (Format) → Step 3 (Headline) → Step 4 (Voiceover) → Step 5 (Visual Prompts) → loop back to Step 2
- Step 1: search web, present topics across 7 categories, user picks
- Step 2: recommend 3 format options, user picks
- Step 3: 4-5 headline options, user picks
- Step 4: 3 voiceover scripts, user picks
- Step 5: 2 visual prompts + thumbnail, delivered. Ask "Ready for next topic?"
- Scripts: ~20 seconds, direct news anchor tone, no filler, no contractions
- Commands: "next" to advance, "back" to revise, "status" for current state, "reset" for fresh start, "help" for all commands

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

## Model Must Re-read news-digest-brain.md After Each Step
- Meta-instruction at top of news-digest-brain.md
- Model re-reads the file before proceeding to the next step
- Ensures adherence to current workflow rules, command routing, and output format

## Format Philosophy (added to step-2)
- Formats are storytelling devices, not costumes
- Transform the story through the format
- Viewers should recognize format through actions, not environment

## Voiceover Style (updated — news anchor tone)
- Direct, factual, news anchor delivery
- No contractions (use "it is" not "it's", "they are" not "they're")
- No conversational filler or witty asides
- Hook → Build → Payoff structure
- One core idea per script
- Voiceover and visual prompts are COMPLETELY INDEPENDENT
- Visuals do their own metaphorical story (format-driven)
- Voiceover does straight news reporting — professional, factual, authoritative
- No format storytelling in the script (e.g., don't write "board meeting" language in the script just because the format is Board Meeting)
- Script should sound like a news anchor delivering the facts, not a narrator inside the visual world
