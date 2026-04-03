# Project structure

- `src/data/<slug>.ts`
  Source of truth for content.
- `src/components/sites/<slug>/`
  Site shell and bespoke sections.
- `src/components/sites/<slug>/pages/`
  Home and interior page assemblies.
- `src/pages/`
  Public routes.
- `public/clients/<slug>/`
  Local media copied from the original site.

## Route rule

If the repository is for one client only, `/` must open that client site directly.
