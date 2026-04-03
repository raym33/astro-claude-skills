# Worked example

This example shows the level of abstraction expected when promoting a repeated section into a shared capsule.

## Source signal

Across several premium service sites, a repeated section appears:

- a short section heading
- a 2x2 grid of equal cards
- each card has a service label, title, short description, and CTA
- the section works as both overview and internal navigation

## Bad abstraction

```text
founder-services-grid
```

Why it is bad:

- tied to one type of business
- too close to source language
- unclear whether it is reusable

## Better abstraction

```text
service-map
```

Why it is better:

- describes the structural role
- works across legal, consulting, education, healthcare, and service businesses
- keeps the contract compact

## Shared capsule brief

Purpose:

- present a small set of service or offering entry points
- help users scan and choose a route

Not for:

- large catalog browsing
- editorial case studies
- product comparison tables

Required slots:

- section heading
- items

Optional slots:

- eyebrow
- intro
- CTA label
- CTA URL
- image or badge per item

Item shape:

- label
- title
- description
- CTA label
- CTA URL
- optional media

Variants:

- equal-grid
- editorial-grid

Constraints:

- best with 3 to 6 items
- should remain scannable in one viewport band
- item structure must stay consistent

## Astro target

```text
src/components/capsules/CapsuleServiceMap.astro
```

## Why shared now

The section solves a recurring structural problem across multiple service websites and keeps the same logic even when the visual style changes.
