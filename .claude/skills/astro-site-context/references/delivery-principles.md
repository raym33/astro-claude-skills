# Delivery principles

- Preserve structure, copy and imagery unless rewriting is explicitly requested.
- Normalize structure, not visual noise from the legacy CMS.
- Ignore shortcode leftovers, broken widgets, plugin UI and builder artifacts.
- Prefer local assets over remote dependencies for critical UI.
- In client previews, expose only the client site.
- Use Astro static output by default.
- Add preview gating only when requested.
- For a basic hosting handoff, package only the compiled site, assets and a short `LEER.txt`.
