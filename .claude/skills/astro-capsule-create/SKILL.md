---
name: astro-capsule-create
description: Create or promote a reusable Astro capsule from a repeated site section. Use when an existing capsule is not enough and you need to decide whether a section should stay site-specific or become a shared capsule with a clean generic contract.
argument-hint: [section-or-pattern]
disable-model-invocation: true
---

Create a reusable capsule for `$ARGUMENTS`.

Read these files first:

- [references/workflow.md](references/workflow.md)
- [references/output-format.md](references/output-format.md)
- [references/worked-example.md](references/worked-example.md)

Rules:

1. Do not promote a section just because it appears once.
2. Name the capsule generically and without source-brand language.
3. Prefer a smaller flexible contract over a large overfitted one.
4. Define required slots, optional slots, variants, and clear constraints.
5. Explicitly decide one of these outcomes:
   - shared capsule now
   - shared capsule later
   - site-specific component only
6. If it becomes a shared capsule, specify the Astro implementation target:
   - `src/components/capsules/Capsule<Name>.astro`
   - any shared types or helpers
   - any docs or catalog updates
7. If a nearby pattern already exists, explain whether to extend it or create a new capsule.
8. End with an implementation-ready capsule brief, not just a loose idea list.
