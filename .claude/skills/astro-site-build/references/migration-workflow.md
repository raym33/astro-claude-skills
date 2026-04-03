# Migration workflow

## Inputs

- local mirror or legacy source
- approved site scope
- existing Astro project state

## Sequence

1. Audit the source before coding.
2. Centralize content in a site data file.
3. Migrate photos and logos into local public assets.
4. Assemble pages with reusable capsules first.
5. Build site-only pieces only when needed.
6. Wire public routes for the client-facing information architecture.
7. Remove unrelated demos if the repo is client-facing.
8. Validate with `npm run check` and `npm run build`.

## Tradeoff

Do not block a client delivery because a repeated pattern might become a future shared capsule. Deliver first, upstream later.
