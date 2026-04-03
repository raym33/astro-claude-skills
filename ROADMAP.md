# Roadmap

This roadmap turns the current public feedback into concrete next steps.

The project is useful today, but it is still early. The next phase is about moving from a promising skill suite to a more proven and easier-to-adopt workflow.

## Current position

What already exists:

- a reusable Claude Code skill suite for premium Astro site work
- a capsule-based workflow
- public documentation
- screenshot examples showing multiple visual directions

What still needs work:

- stronger proof from real use
- more resilience when working across longer conversations

## Priority 1: Add real before/after case studies

Why this matters:

- screenshots show range, but they do not show migration quality
- users need proof that the workflow improves a real site, not just invented examples
- before/after examples help explain structure preservation, cleanup quality, and Astro delivery value

Planned work:

- add at least 2 real before/after case studies
- show source structure vs. Astro result
- document what stayed the same and what changed
- include short notes on capsule reuse vs. custom sections

Success criteria:

- at least 2 documented case studies in the repo
- each case study includes source summary, Astro result, and key implementation decisions

## Priority 2: Publish one live demo

Why this matters:

- public screenshots help, but a live site builds much more trust
- a live demo lets people inspect navigation, responsiveness, and polish directly
- it gives the repo a more credible public landing point

Planned work:

- publish 1 public Astro demo
- keep it generic and brand-safe
- link it from the README
- use it as the main “see it live” reference

Success criteria:

- one public demo URL linked in the repo
- the demo reflects the same quality standard as the screenshots

## Priority 3: Create a new-capsule helper skill

Status: implemented

Why this matters:

- the capsule catalog is useful, but real projects will keep needing new sections
- right now, extending the system depends too much on manual judgment
- a dedicated helper would make capsule creation more consistent and reusable

Implemented:

- added an `astro-capsule-create` helper skill
- defined a repeatable workflow for:
  - deciding whether a section should become a capsule
  - naming it generically
  - defining its slots and constraints
  - deciding whether it belongs in shared capsules or stays site-specific
- added output format guidance and a worked example

Result:

- one reusable skill for creating or promoting capsules
- one worked example included in the skill references

## Priority 4: Add a simple installer for `~/.claude/skills`

Status: implemented

Why this matters:

- current install instructions are correct, but still manual
- people coming from social posts want a faster first run
- a basic installer reduces friction and makes the project feel more complete

Implemented:

- added a simple install script for personal Claude Code skills
- supports the official global path: `~/.claude/skills/`
- documented update and removal flow

Result:

- one documented install script for global setup
- one documented project-local install path

## Secondary improvements

These are not the top 4 priorities, but they matter:

### Improve prompt specificity

Some skills are still broad enough that output quality depends heavily on the surrounding conversation.

Planned work:

- tighten argument hints
- add more explicit output formats
- add better decision rules for capsule reuse vs. bespoke sections

### Improve long-conversation reliability

Claude can dilute skill rules in long or noisy threads.

Planned work:

- move more important guidance into tighter, high-signal skill files
- reduce duplicated instruction wording
- make core rules more compact and easier to preserve

### Expand the capsule system carefully

The goal is not to create a huge block list. The goal is to add capsules only when they prove reusable across multiple projects.

Planned work:

- add capsules only after repeated real-world use
- avoid filling the system with weak or overfitted patterns
- document when a site-specific component should stay site-specific

## Suggested milestones

### v0.2

- publish 1 live demo
- add 1 real before/after case study
- add a short quickstart flow for social traffic

### v0.3

- add a second real case study
- tighten skill prompts and output formats

### v0.4

- add a simple global installer
- improve onboarding and update flow
- expand proof of real production use

## Direction

The goal is not to become a giant generic prompt pack.

The goal is to become a focused, credible workflow for building premium Astro websites with:

- stronger structure
- better migration quality
- clearer reuse logic
- less generic output
- and lower setup friction
