# Polish checklist

## UX and visual quality

- no broken icons or placeholder glyphs
- buttons and CTA labels are intentional
- tabs, toggles and overlays actually work
- cards align correctly on desktop and mobile
- no text overflow or cramped copy blocks
- typography hierarchy is clear and premium

## Client preview

- root route shows only the client site
- no unrelated demos or adapter pages
- access gate exists only if requested

## Metadata

- title, description and canonical per page
- OG / Twitter image and alt
- correct `robots` behavior for preview vs production
- structured data only where it matches visible content
- `llms.txt` only as extra support, not a substitute for real metadata

## Delivery

- `npm run check`
- `npm run build`
- ZIP handoff stripped to compiled site, assets and `LEER.txt`
