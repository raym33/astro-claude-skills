# Capsule creation workflow

Use this workflow when deciding whether a missing section should become a shared Astro capsule.

## 1. Start from the section signal

Describe the section in neutral terms:

- what it does
- where it appears in the page
- what user problem it solves
- what makes it distinct from existing capsules

Do not start from the source brand or visual identity.

## 2. Check whether an existing capsule is already enough

Before creating anything new, test the section against the current capsule system.

Questions:

- can an existing capsule already handle this with better content and styling?
- would a small extension solve it?
- would forcing an existing capsule make the result worse?

If a weak substitute would hurt quality, do not fake reuse just to avoid new work.

## 3. Test for reusability

A section is a good capsule candidate when at least one of these is true:

- it already appears across multiple projects
- it solves a recurring page problem
- it can work across more than one market with the same structural logic
- it has a stable contract even if the visual direction changes

If it is highly specific to one project, keep it site-specific.

## 4. Strip out source identity

Before naming or defining the capsule:

- remove brand language
- remove market-specific labels unless they are part of the actual structure
- remove decorative behaviors that are not central to the section

Keep only the structural logic.

## 5. Define the capsule contract

For every proposed capsule, define:

- purpose
- what it is not for
- required slots
- optional slots
- repeatable item structure, if any
- allowed variants
- layout constraints
- likely themes or surfaces
- failure modes

Good capsule contracts are specific enough to implement and small enough to reuse.

## 6. Decide the outcome

Choose one:

### Shared capsule now

Use this when the pattern is already strong, generic, and clearly reusable.

### Shared capsule later

Use this when the pattern looks promising but still needs one or two more real projects before promotion.

### Site-specific only

Use this when the section is too tied to one client, one content model, or one narrative structure.

## 7. Plan the Astro implementation

If the capsule should be shared now, specify:

- component name
- prop structure
- item shape, if repeated
- which existing capsules it is closest to
- whether it needs a new helper or can stay self-contained

Also specify where it should live:

```text
src/components/capsules/Capsule<Name>.astro
```

## 8. Keep the brief implementation-ready

The final output should help a builder act immediately.

That means:

- generic name
- reusable contract
- explicit decision
- implementation target
- no hand-wavy “maybe” summary
