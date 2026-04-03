# Usage Guide

This guide explains how to use **Astro Claude Skills** inside a real Astro project with Claude Code.

## 1. What this repository is

This repository is a generic skill suite for building premium Astro websites.

It helps Claude Code:

- audit a source website or local mirror
- plan a page using reusable capsules
- build a real Astro site
- polish the result for delivery

It is **not** a theme, starter kit, or component library by itself.  
It is a set of Claude Code skills and reference files.

## 2. What you need before starting

You should already have:

- a local Astro project
- Claude Code working in that project
- a source to work from, if you are doing a migration:
  - a mirrored website
  - a local HTML export
  - an existing Astro site
  - or an approved live URL

## 3. Install the skills into your Astro project

From the root of this repository:

```bash
cp -R .claude /path/to/your-astro-project/
```

That will copy the skill suite into your target project.

Your Astro project should then contain:

```text
/path/to/your-astro-project/
└── .claude/
    └── skills/
        ├── astro-site-context/
        ├── astro-reference-audit/
        ├── astro-capsule-compose/
        ├── astro-site-build/
        └── astro-site-polish/
```

If you want the skills available across all projects instead of only one repository, use [`install-global.md`](./install-global.md).

## 4. Understand the skill roles

The suite is split into focused skills:

- `astro-site-context`
  Hidden background context for project shape, delivery rules, and capsule thinking.
- `astro-reference-audit`
  Reads a source site and extracts IA, must-keep copy, image needs, and capsule mappings.
- `astro-capsule-compose`
  Plans the page sequence before implementation.
- `astro-capsule-create`
  Decides whether a missing repeated section should become a shared capsule or stay site-specific.
- `astro-site-build`
  Builds or migrates the actual Astro site.
- `astro-site-polish`
  Handles final responsive fixes, metadata, preview behavior, and delivery cleanup.

## 5. Recommended step-by-step workflow

### Step 1: Audit the source

Use this when you have a mirrored site, legacy website, or source export:

```text
/astro-reference-audit /path/to/source
```

Good uses:

- a local mirror of an existing website
- a legacy WordPress export
- a static HTML folder
- a known source URL

Expected result:

- structure summary
- must-keep copy and image guidance
- capsule mapping
- bespoke section warnings

### Step 2: Compose the page before building

Once the source is clear, ask Claude to plan the capsule stack:

```text
/astro-capsule-compose premium studio website
```

Or:

```text
/astro-capsule-compose service site for a boutique legal advisory
```

Expected result:

- ordered page sequence
- which sections should use existing capsules
- which parts need a custom Astro component
- whether a missing capsule should be ported first

### Step 3: Create a new capsule when needed

If the current catalog is not enough and a repeated section needs a clean reusable contract:

```text
/astro-capsule-create service overview grid
```

Use it when:

- a section keeps reappearing across projects
- forcing an existing capsule would weaken the site
- you need to decide whether the pattern should become shared or stay local

Expected result:

- a generic capsule name
- a reusable capsule brief
- a clear decision: shared now, shared later, or site-specific only
- an Astro implementation target

### Step 4: Build the site

Use the build skill to implement the actual project:

```text
/astro-site-build /path/to/source
```

Or, if you already know the client/site target:

```text
/astro-site-build private healthcare clinic website
```

Expected result:

- Astro routes created or updated
- content placed in a centralized data layer when appropriate
- local assets copied into `public/`
- capsule reuse prioritized over weak one-off sections

### Step 5: Polish for delivery

Once the site is implemented, run the finishing pass:

```text
/astro-site-polish /
```

Or target a specific route:

```text
/astro-site-polish /about
```

Expected result:

- responsive cleanup
- typography and spacing refinements
- metadata improvements
- preview gating if needed
- hosting ZIP cleanup if needed

## 6. Typical migration flow

For a migration from a legacy or mirrored website, the normal sequence is:

1. Audit the source
2. Compose the capsule plan
3. Create a new capsule if the catalog is insufficient
4. Build the Astro site
5. Polish the result
6. Run project checks

Typical final commands in the Astro project:

```bash
npm run check
npm run build
```

## 7. Example prompts that work well

Use short, direct prompts.

Examples:

- `Audit this mirrored site and tell me what structure must stay.`
- `Compose a premium homepage for a boutique architecture firm.`
- `Build this legacy site in Astro without changing the copy.`
- `Polish the services page and fix mobile spacing.`
- `Keep the site authored and premium, not generic SaaS.`

## 8. What the skills are best at

These skills work especially well for:

- premium service websites
- studio and portfolio sites
- founder-led business sites
- product marketing sites
- editorial business sites
- migrations from legacy CMS output into Astro

## 9. What to avoid

Do not use the skills as if they were meant to:

- clone a source website literally
- preserve broken builder behavior
- keep plugin clutter from a CMS export
- turn every site into the same SaaS landing page
- introduce client-specific names or source brands into reusable skill files

## 10. How to extend the system safely

If a section appears repeatedly across multiple projects:

1. first build it once in a site-specific way if needed
2. confirm it is genuinely reusable
3. abstract it into a generic capsule description
4. only then promote it into the shared system

This keeps the repository useful without filling it with weak or overfitted patterns.

## 11. Good delivery habits

When using this skill suite in real projects:

- keep local client assets local
- keep routes clean in delivery repos
- avoid leaving demos inside client-facing projects
- prefer fewer stronger sections over many average ones
- preserve structure, copy, and imagery unless rewriting is requested

## 12. Quick checklist

Before shipping a site built with this system, confirm:

- the root routes expose only the intended public site
- the layout feels deliberate, not generic
- the copy and imagery still match the approved source
- the reusable capsules were used where appropriate
- bespoke components were only created where necessary
- `npm run check` passes
- `npm run build` passes

## 13. Where to go next

After this guide, the best next files to read are:

- `README.md`
- `.claude/skills/astro-reference-audit/SKILL.md`
- `.claude/skills/astro-capsule-compose/SKILL.md`
- `.claude/skills/astro-site-build/SKILL.md`
- `.claude/skills/astro-site-polish/SKILL.md`
