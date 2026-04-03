---
name: astro-reference-audit
description: Audit a mirrored or legacy website before an Astro migration. Use when given a local website dump, mirrored reference, or legacy site URL and you need to extract IA, must-keep copy, images, capsule mappings, and bespoke section needs before implementation.
argument-hint: [source-path-or-url]
disable-model-invocation: true
---

Audit `$ARGUMENTS` before writing code.

Read these files first:

- [references/workflow.md](references/workflow.md)
- [references/output-format.md](references/output-format.md)

Rules:

1. Treat the source as a structural reference, not as code to clone literally.
2. Preserve original IA, key text and photos unless the user asks for rewriting.
3. Prefer local mirrors over live sites when both exist.
4. If the source is CMS output, discard plugin clutter and builder noise from the analysis.
5. Map sections to existing capsules when possible.
6. Flag sections that require bespoke Astro components.
7. Flag repeated bespoke patterns as future capsule candidates, but do not block delivery on that extraction.

Keep the output concise and implementation-ready.
