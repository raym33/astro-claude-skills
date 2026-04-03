---
name: astro-capsule-compose
description: Plan a high-quality Astro page or full website using a capsule-based system. Use when deciding which sections to combine for a new client site, landing page, studio site, product page, or migration before implementation starts.
argument-hint: [site-type-or-page-goal]
disable-model-invocation: true
---

Compose a capsule plan for `$ARGUMENTS`.

Read these files first:

- [../astro-site-context/references/capsule-catalog.md](../astro-site-context/references/capsule-catalog.md)
- [../astro-site-context/references/page-recipes.md](../astro-site-context/references/page-recipes.md)

Produce an implementation-ready capsule stack before coding.

Output requirements:

1. Identify the site type or page goal.
2. Propose the page sequence in order.
3. For each section, state:
   - capsule or site-only component
   - why it fits
   - whether it already exists or requires a port
4. Flag the minimum bespoke work needed.
5. Prefer quality over speed. Do not use a weak substitute just because it already exists.

Rules:

- Keep the stack lean. Fewer strong sections beat many average ones.
- Avoid generic SaaS sequencing when the brand wants something premium or authored.
- When an extended capsule would clearly improve the page, recommend the port instead of hiding the need.
- If the requested style is unsupported, say which new section or capsule is needed.
