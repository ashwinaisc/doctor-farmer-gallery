---
name: doctor-farmer-posters
description: Create, edit, verify, and add Doctor Farmer Instagram posters to this gallery. Use for any Doctor Farmer poster generation, redesign, watermark correction, monthly gallery update, or poster QA in this project.
---

# Doctor Farmer Posters

Treat the current project files as canonical. Preserve existing gallery behavior and inspect the relevant poster, prompt source, and `app.js` data before changing anything.

## Brand and poster requirements

- Produce a realistic vertical 4:5 Instagram poster.
- Preserve the user's location, scene, lighting, mood, and exact quote.
- Render the quote verbatim, including apostrophes, punctuation, spelling, capitalization, and any requested underline.
- Integrate the quote naturally into the foreground surface named by the prompt. Do not leave text floating over the sky, water, architecture, or landscape when the prompt specifies a sign, stone, pillar, ledge, plaque, or boulder.
- Always include the exact watermark `@iamdoctorfarmer`. Do not use `@doctorfarmer` or another variation.
- Use an elegant handwritten watermark approximately 28% of the image width. Keep it visibly secondary to the quote, inside safe margins, and away from important details.
- Choose white, off-white, or dark watermark color according to the local background so contrast remains clear. Adapt placement to the composition rather than forcing one fixed corner.
- Avoid sharp-focus people, additional writing, invented logos, malformed architecture, duplicated objects, and obvious generative artifacts.

## Creation and editing

Use the image-generation workflow for raster generation or editing. When editing an existing local poster, inspect it visually first and treat it as the edit target. Preserve acceptable scene elements and change only the requested or defective parts.

For multiple distinct posters, create one image-generation request per poster. Save accepted project assets under `assets/` using the established lowercase month-and-day filename, for example `october-06.png`.

Do not replace the canonical gallery asset until the candidate passes the verification below. Keep the prior asset available until validation succeeds.

## Mandatory verification after every image

Visually inspect every generated or edited candidate before adding it to the gallery. Verify all of the following:

1. The quote is exact and complete.
2. The location and scene follow the prompt.
3. The quote appears on the intended physical surface and remains legible.
4. The watermark reads exactly `@iamdoctorfarmer`.
5. Watermark size, placement, contrast, and safe margins are appropriate.
6. The image has no obvious visual defects, unwanted people, duplicate text, or extra marks.
7. The file is an exact 4:5 portrait ratio based on its pixel dimensions.

If any check fails, revise or regenerate the candidate and inspect it again. Do not describe an unverified candidate as complete.

If the image-generation output has the wrong ratio, prefer correcting the composition through another image edit. If deterministic resizing is necessary and will not damage the composition, use high-quality resampling and visually inspect the resized result again.

## Gallery update verification

After replacing an accepted asset:

- Confirm the expected month/day entry points to the correct asset and caption.
- Run a JavaScript syntax check on `app.js` when it changed.
- Confirm the gallery page and updated image return HTTP 200 from `http://127.0.0.1:8765/` when the local server is running.
- Recheck the displayed poster in the gallery when layout, cropping, or caching could affect the result.
- Report which posters changed and which checks passed. Do not commit or push unless the user asks.

## Gallery conventions

- Appointment numbers in captions: `+91 89259 54625` and `+91 72004 24271`.
- Write every caption as a motivational expansion of the quote printed on that poster. Do not make the caption about the photographed place or its history, and do not add location hashtags unless the user requests them.
- Preserve the Instagram-style viewer and Copy/download behavior.
- Keep month filtering monthly; do not introduce weekly grouping unless requested.
