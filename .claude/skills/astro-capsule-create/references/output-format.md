# Output format

When using `astro-capsule-create`, structure the answer like this:

## 1. Capsule decision

State one of:

- shared capsule now
- shared capsule later
- site-specific only

## 2. Proposed name

Give the generic capsule name in hyphen-case.

Example:

```text
service-map
```

## 3. Why existing capsules are not enough

Explain briefly why current capsules do not fully solve it.

## 4. Capsule brief

Include:

- purpose
- not for
- required slots
- optional slots
- repeatable item shape, if any
- variants
- layout rules
- constraints

## 5. Astro implementation target

State:

- component path
- related helpers or shared files, if any
- whether a new shared type is needed

## 6. Promotion logic

Explain why it should be shared now, shared later, or kept local.

## 7. Validation checklist

List the checks needed before calling the capsule finished.

Typical checks:

- works across multiple page types
- does not leak source-brand language
- does not overlap too heavily with an existing capsule
- remains useful with different content density
