# Global Installation Guide

This guide explains how to install **Astro Claude Skills** as **personal Claude Code skills** so they are available across all your projects.

## 1. When to use global installation

Use a global installation when:

- you want the same skills in every Astro project
- you work across multiple client repositories
- you do not want to copy `.claude/skills/` into each project manually

If you want the skills available only inside one project, use the local project installation described in [`usage-guide.md`](./usage-guide.md).

## 2. Official Claude Code location for personal skills

Claude Code personal skills live in:

```bash
~/.claude/skills/
```

Each skill must be stored as a directory containing a `SKILL.md` file.

Example:

```text
~/.claude/skills/
└── astro-site-build/
    └── SKILL.md
```

This is the official personal-skill location documented by Claude Code.

## 3. Create the global skills directory

If the directory does not exist yet:

```bash
mkdir -p ~/.claude/skills
```

## 4. Install this repository globally

### Option A: Copy the skill folders directly

From the root of this repository:

```bash
mkdir -p ~/.claude/skills
cp -R .claude/skills/* ~/.claude/skills/
```

This is the simplest option.

Use it when:

- you want a quick install
- you do not care about syncing updates automatically

## 5. Verify the install

List the installed skills:

```bash
ls ~/.claude/skills
```

You should see:

- `astro-site-context`
- `astro-reference-audit`
- `astro-capsule-compose`
- `astro-site-build`
- `astro-site-polish`

You can also confirm that each directory contains a `SKILL.md` file.

## 6. How to use the globally installed skills

Once installed, open Claude Code inside any Astro project and use:

```text
/astro-reference-audit /path/to/source
```

```text
/astro-capsule-compose premium service website
```

```text
/astro-site-build /path/to/source
```

```text
/astro-site-polish /
```

Global skills are available across projects, but they still work best when the active repository is an Astro project or a migration target.

## 7. Recommended setup

Use this repository globally for:

- audit workflow
- page composition workflow
- Astro build workflow
- delivery polish workflow

Then keep project-specific rules in the target repository itself:

- project `.claude/skills/`
- project `CLAUDE.md`
- local design rules
- client-specific content constraints

That split works well:

- global skills for reusable process
- project files for project-specific context

## 8. Updating the global install

When the repository changes, update your global copy with:

```bash
cp -R .claude/skills/* ~/.claude/skills/
```

If you use a symlink-based workflow instead, update the source repo and the global install will follow automatically.

## 9. Good safety practice

Before installing any Claude Code skill globally:

- read the `SKILL.md` files
- inspect any bundled references or scripts
- confirm the repository is from a source you trust

Global skills affect every project where Claude Code runs, so they should be treated with the same care as any other reusable automation layer.

## 10. Summary

Global install path:

```bash
~/.claude/skills/
```

Quick install command:

```bash
mkdir -p ~/.claude/skills && cp -R .claude/skills/* ~/.claude/skills/
```

Use global install when you want the same Astro workflow in every project.
