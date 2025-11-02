---
description: Layer 3B — Chat Modes Factory. Rules for *.chatmode.md files. Minimal modes that bind model + tools + behavior. Store modes under memory-bank/chatmodes/.
---

<!-- memory-bank/instructions/layer-3b-chatmodes-factory.instructions.md -->

# Layer 3B — Chat Modes Factory

Purpose. Modes are switches. They set model and tools, then defer to instructions. Keep mode text thin. Point to rules in `[Layer 3A](./layer-3a-custom-instructions-factory.instructions.md)` and reference prompts in `[Layer 3C](./layer-3c-prompt-files-factory.instructions.md)`.

Storage. Place actual mode files in `memory-bank/chatmodes/`. The present document stays in `memory-bank/instructions/`.

## Process Summary

This factory follows five aligned stages that keep custom chat modes lean and compliant.

### Stage A: Constraint Definition
- **Purpose:** Lock core metadata so chat modes stay interoperable.
- **Actions:** Require front-matter description, sanctioned tool list, and approved models only.
- **Outcome:** Predictable headers that downstream agents can parse safely.

### Stage B: Authoring Blueprint
- **Purpose:** Describe the minimal body structure each mode must follow.
- **Actions:** Limit content to ≤200 words covering purpose, inputs, outputs, and boundaries; link supporting instructions.
- **Outcome:** Focused mode files that defer policy to shared instructions.

### Stage C: Bootstrap & Stewardship
- **Purpose:** Ensure directory presence and guardrail enforcement during creation.
- **Actions:** Create `memory-bank/chatmodes/` if absent, flag any attempt to alter existing model or tool clauses, factor repeats into instruction files.
- **Outcome:** Idempotent setup with shared text centralized.

### Stage D: Review Gate
- **Purpose:** Validate completeness and link integrity before adoption.
- **Actions:** Confirm compliant front-matter, explicit inputs/outputs/boundaries, and working relative links without duplication.
- **Outcome:** Audit-ready modes that pass memory bank lint expectations.

### Stage E: Runtime Adoption Guidance
- **Purpose:** Document formatting exclusions and VS Code operational usage.
- **Actions:** Keep `.chatmode.md` files out of Prettier, explain built-in vs custom modes, and outline editor workflows.
- **Outcome:** Smooth day-to-day usage with preserved structure and discoverability.

## Constraints
- Front-matter must include:
  - `description: <short>`
  - `tools: ['codebase', 'editFiles', 'fetch']`  ← exact
  - `model: GPT-5 (Preview)` **or** `model: GPT-5 mini (Preview)`  ← only these
- One top-level H1 in the mode file body. Prefer relative links for internal references; external links allowed when authoritative.

## Mode Authoring Procedure
- Path for mode file: `memory-bank/chatmodes/<name>.chatmode.md`
- Body ≤ 200 words. State:
  - Purpose.
  - Inputs expected.
  - Outputs format.
  - Hard boundaries (what the mode must not do).
- Link to instruction files in `memory-bank/instructions/` for detailed policy.

## Verify & Bootstrap
- Create `memory-bank/chatmodes/` if missing.
- Never change an existing mode's `tools` or `model` lines without explicit approval. Flag instead.
- Factor common text into an instructions file and link to it.

## Review Gate
- Front-matter present and compliant.
- Body minimal. Inputs/outputs/boundaries explicit.
- Links resolve. Prefer relative links internally; allow authoritative external links. Avoid duplicating instruction text.

## Exclusions

Even if we do not plan to use prettier for the time being, we exclude the chatmode files from formatting to avoid any accidental reformatting that could alter the intended structure or readability of these files.

```ignore
# Keep prompt and chatmode cards out of Prettier to preserve strict spacing/heading contracts, generate a .prettierignore file with the 2 files types below:
*.prompt.md
*.chatmode.md
```
