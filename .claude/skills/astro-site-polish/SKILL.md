---
name: astro-site-polish
description: Final polish pass for an Astro client site. Use when tightening typography, spacing, responsive behavior, metadata, preview gating, chatbot stubs, preview readiness, or packaging a hosting handoff zip.
argument-hint: [site-or-route]
disable-model-invocation: true
---

Polish `$ARGUMENTS` for delivery.

Read [references/polish-checklist.md](references/polish-checklist.md) first.

Priorities:

1. Fix broken UI before visual tuning:
   - icons
   - tabs
   - buttons
   - anchor targets
   - close states
   - overflow and mobile layout
2. Tighten typography and spacing so the site feels deliberate.
3. Add or revise metadata only when it helps the real site:
   - canonical
   - Open Graph
   - Twitter cards
   - JSON-LD
   - `robots.txt`
   - `sitemap.xml`
   - `llms.txt`
4. Keep previews `noindex` until production.
5. If preview gating is requested, add a lightweight access screen.
6. If the deliverable is a basic hosting ZIP, remove preview-only gates unless the user explicitly wants them.
7. For handoff ZIPs, package only compiled output, assets and a short `LEER.txt`.
8. Finish with `npm run check` and `npm run build`.
