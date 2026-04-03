---
name: astro-site-context
description: Background context for building premium Astro websites using a capsule-based system. Use when working on reusable sections, client site components, Astro routing, local client assets, or migrations from legacy references.
user-invocable: false
---

Treat the target project as an Astro delivery repository for premium websites.

Core rules:

- Reuse existing capsules before inventing new layout primitives.
- Keep site-specific logic inside a dedicated site namespace.
- Keep content centralized.
- Keep migrated media local.
- In a delivery repo, root routes must expose only the client site.
- Preserve original structure, copy, and images unless the user asks for rewriting.
- Avoid generic SaaS UI.
- If a repeated bespoke section appears across projects, flag it for later promotion into the shared capsule library.

Read these files when needed:

- [references/project-shape.md](references/project-shape.md)
- [references/capsule-catalog.md](references/capsule-catalog.md)
- [references/page-recipes.md](references/page-recipes.md)
- [references/delivery-principles.md](references/delivery-principles.md)
