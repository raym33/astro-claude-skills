# Quickstart

This is the fastest way to start using **Astro Claude Skills** in a real Astro project.

## Option A: Install into one project

From the root of this repository:

```bash
cp -R .claude /path/to/your-astro-project/
```

Then open Claude Code inside your Astro project and use:

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

## Option B: Install globally for all projects

```bash
mkdir -p ~/.claude/skills
cp -R .claude/skills/* ~/.claude/skills/
```

Then open Claude Code in any Astro project and use the same commands.

## Best use cases

This works best for:

- premium service websites
- studio and portfolio sites
- product marketing sites
- migrations from legacy CMS output into Astro

## Recommended flow

1. Audit the source
2. Compose the page
3. Build the site
4. Polish the delivery

## Read next

- [`usage-guide.md`](./usage-guide.md)
- [`install-global.md`](./install-global.md)
