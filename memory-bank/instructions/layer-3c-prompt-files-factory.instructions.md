---
description: Layer 3C — Prompt Files Factory. Rules for *.prompt.md files. Enforce strict heading and link contracts for reliable execution.
---

<!-- memory-bank/instructions/layer-3c-prompt-files-factory.instructions.md -->

# Layer 3C — Prompt Files Factory

Purpose. Define the canonical structure for prompt cards stored under `memory-bank/prompts/`. Keep them deterministic, concise, and link back to Layers 3A/3B for policy and modes.

Storage. Place prompt files at `memory-bank/prompts/<name>.prompt.md`. Keep Prettier off these files.

## Process Summary

This factory follows five aligned stages that keep prompt cards predictable and verifiable.

### Stage A: Constraint Definition
- Front-matter must include: `description: <short>`.
- A path marker comment must appear near the top: `<!-- memory-bank/prompts/<filename>.prompt.md -->`.
- Exactly one top-level `#` H1.
- The first `##` H2 must be: `## Slash Command: /<stem> - <purpose>`.
- Required sections in order after the Slash Command:
  - `### Context & Activation`
  - `### Goal`
  - `### Output format`
  - `### Inputs`
  - `### Steps / Rules`
  - `### Examples`
  - `### Edge cases / Stop criteria`
- Prefer relative links for internal references; avoid external links unless strictly necessary and authoritative.

### Stage B: Authoring Blueprint
- Keep body ≤ 400 words excluding lists.
- Reference relevant modes and instruction layers, e.g., `[Layer 3A](./layer-3a-custom-instructions-factory.instructions.md)`, `[Layer 3B](./layer-3b-chatmodes-factory.instructions.md)`.
- Use variables like `${input:...}` minimally and explicitly.

### Stage C: Bootstrap & Stewardship
- Create `memory-bank/prompts/` if missing; do not overwrite existing files.
- Factor reusable policy into `instructions/` files instead of duplicating.

### Stage D: Verification Path
- Validate front-matter, path marker, headings contract, required section order, and absence of external URLs where possible.
- Keep a read-only validator script (see Layer 4) and run it in CI/local checks.

### Stage E: Review Gate
- Front-matter `description` present and concrete.
- Strict path marker and headings contract satisfied.
- Links resolve and are relative for internal targets.
- No duplication of instruction text.

## Related content

- [Layer 3A — Instructions Factory](./layer-3a-custom-instructions-factory.instructions.md)
- [Layer 3B — Chat Modes Factory](./layer-3b-chatmodes-factory.instructions.md)
