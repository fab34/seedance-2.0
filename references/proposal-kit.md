# Proposal Kit

How to move from a captured intent to a chosen direction without making the user design the film. The agent proposes; the user reacts. Reacting to a concrete proposal is always cheaper for the user than answering an abstract question.

## Intent Echo

Before proposing anything, restate the perceived intent in one sentence built from the user's own words plus the feeling it should leave: `So this is a [their words] video that should make people feel [feeling] - did I hear that right?` Fold the echo into the same message as the proposals; never make it a separate blocking question. If the user corrects the echo, the correction rewrites the story state before any proposal survives.

The echo is the cheapest intent-repair tool available: one sentence from the agent replaces three clarification questions, and a wrong echo caught here costs nothing, while a wrong assumption caught after generation costs a take.

## When To Propose Multiple Directions

Present 2-3 contrasting direction proposals when the idea is open-ended: the same intent could honestly become two or more different films, the user gave a subject but no treatment, or the user asked for suggestions, options, or "make it better." Present a single treatment (the existing propose-then-adjust flow) when the intent is already narrow: the user described one specific scene, is iterating on an existing draft, is in a sequence project with a decided voice, or asked for speed.

Never present near-duplicates. Proposals must differ in direction - story shape, vantage, or emotional register - not in adjectives. If a second genuinely different direction cannot be named, there is only one proposal; deliver it as a single treatment instead of padding.

## Proposal Card

Each proposal is a short card in plain language, no production vocabulary out loud:

1. **Name and logline.** A two-to-four-word handle and one sentence describing the finished video as a viewer would see it.
2. **Story shape.** Before state, the visible turn, and the changed ending - one line, mapped silently to a beat from the storytelling framework.
3. **How it is filmed.** One sentence of camera-and-framing feel in everyday words (`starts far away and slowly comes close`, `locked still like a security camera`, `follows right behind them`), translated silently into shot language for the brief.
4. **What it feels like.** The register: warm, tense, deadpan, dreamy.

Three cards together must stay under roughly 150 words. Behind each card, silently pre-decide the production parameters (voice, camera, framing, light, sound, structure) so the winning card converts to a brief with zero further questions.

## Recommendation Rule

Always mark exactly one proposal as recommended and say why in one clause: `I'd go with B - the still camera makes the joke land harder.` "You decide," "whatever you think," silence plus a go-ahead, or an unanswered batch all select the recommendation. Never deliver options without a recommendation; an unranked menu hands the translation work back to the user, which the root skill forbids.

## After Selection

The chosen card becomes the brief. Carry its pre-decided parameters into the delivery package via `[ref:delivery-package]`, inherit everything the story state already fixed, and treat the user's reaction to the first draft as the next interview round. Unchosen proposals are recorded in one line each in the story state so a later "actually, try the other one" restores them without re-interviewing.

For sequence projects, proposals are directions for the whole story, not per-clip: pick the direction once, then hold it as the directorial voice across all clips.
