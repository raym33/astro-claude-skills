# Project shape

## Core folders

- `src/components/capsules/`
  Reusable section system.
- `src/components/sites/<slug>/`
  Site-specific shell and bespoke components.
- `src/components/sites/<slug>/pages/`
  Page assemblies for a single site.
- `src/data/<slug>.ts`
  Central content source.
- `public/clients/<slug>/`
  Local assets copied from the original site.
- `src/pages/`
  Public routes.
- `src/lib/seo.ts`
  Shared metadata helpers.
- `src/layouts/Layout.astro`
  Global outer document shell.

## Route rule

- Workspace prototypes may live under nested routes.
- Delivery repositories should serve the client site from root routes only.

## Validation

- `npm run check`
- `npm run build`
