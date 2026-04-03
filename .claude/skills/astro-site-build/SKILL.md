---
name: astro-site-build
description: Build or migrate a premium client website in Astro from a mirrored reference using a capsule-based system. Use when turning a legacy site into Astro while preserving structure, copy and images and delivering clean client-facing routes.
argument-hint: [client-or-source]
disable-model-invocation: true
---

Build `$ARGUMENTS` as a real Astro site.

Read these files first:

- [references/migration-workflow.md](references/migration-workflow.md)
- [references/project-structure.md](references/project-structure.md)
- [references/capsule-selection.md](references/capsule-selection.md)
- [../astro-site-context/references/capsule-catalog.md](../astro-site-context/references/capsule-catalog.md)
- [../astro-site-context/references/page-recipes.md](../astro-site-context/references/page-recipes.md)

Then follow this order:

1. Confirm the source of truth: local mirror, existing repo files, or an approved live URL.
2. Decide route strategy:
   - delivery repo: root routes only for the client site
   - workspace prototype: nested route allowed
3. Create or update:
   - `src/data/<slug>.ts`
   - `src/components/sites/<slug>/`
   - `src/components/sites/<slug>/pages/`
   - `src/pages/`
   - `public/clients/<slug>/`
4. Build a capsule plan first. If helpful, run `/astro-capsule-compose`.
5. Reuse existing capsules first.
6. Port a missing capsule when it is central to the page and a weak substitute would hurt quality.
7. Create a site-only component only when a capsule would distort the original structure.
8. Keep the site premium and authored. Do not let it fall into generic SaaS UI.
9. Remove unrelated demos, adapters and other routes from delivery repos.
10. Finish with `npm run check` and `npm run build`.

If the user also wants the delivery pass, continue with `/astro-site-polish`.
