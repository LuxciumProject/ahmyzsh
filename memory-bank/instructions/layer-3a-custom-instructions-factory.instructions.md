---
description: Layer 3a — Custom Instructions Factory. Canonical authoring rules for *.instructions.md. Single source of truth and short atomic rules.
---

<!-- memory-bank/instructions/layer-3a-custom-instructions-factory.instructions.md -->

# Layer 3a — Custom Instructions Factory

Purpose. Define durable guardrails for all AI runs. Store every instructions file in `memory-bank/instructions/`. Keep rules atomic and reusable. Do not duplicate text; link relatively.

Scope. Creation, verification, and evolution of `*.instructions.md`. Front-matter `description` is mandatory. `applyTo` is optional and **immutable** once present. Do not add `applyTo` without explicit glob requests from your human user.

## Process Summary

This factory guidance flows through five checkpoints that keep instruction cards consistent and auditable.

### Stage A: Scope & Principles
- **Purpose:** Establish guardrails and link discipline before authoring starts.
- **Actions:** Apply atomic rule mindset, prefer relative links, plan for idempotent updates.
- **Outcome:** Clear constraints that prevent duplication and drift.

### Stage B: Authoring Blueprint
- **Purpose:** Define canonical file placement and front-matter requirements.
- **Actions:** Target `memory-bank/instructions/`, enforce `description`, respect immutable `applyTo`.
- **Outcome:** Uniform file metadata and predictable discovery.

### Stage C: Content Construction
- **Purpose:** Shape body structure around actionable, testable bullets.
- **Actions:** Write conditional rules, cross-link sibling layers, keep length within 200–400 words.
- **Outcome:** Focused instruction sets that compose cleanly with other layers.

### Stage D: Verification Path
- **Purpose:** Guard against misplacement and unauthorized scope changes.
- **Actions:** Create only missing files, avoid overwriting, log updates in `memory-bank/progress.md`.
- **Outcome:** Idempotent authoring with documented lineage.

### Stage E: Extended Guidance
- **Purpose:** Provide reference implementations and VS Code usage patterns.
- **Actions:** Follow format exemplars, honour front-matter spacing, reuse instructions through settings.
- **Outcome:** Practical adoption playbook that keeps generated cards compliant.

## Operating Principles

- One idea per bullet. Keep language testable.
- Prefer linking to existing rules over repeating.
- Idempotent changes. No overwrites. Merge-append only.
- Prefer relative links for intra-repo references. External links are allowed when directly relevant and authoritative. No placeholders.

## Authoring Procedure
- Path: `memory-bank/instructions/<topic>.instructions.md`
- Front-matter:
  - `description: <concrete what/why>`
  - `applyTo:` omit unless provided; if present, never change.
- Body:
  - Bulleted rules. Avoid long narratives.
  - "If X → Do Y" format for conditions.
  - Link to sibling rules like `[Layer 3B](./layer-3b-chatmodes-factory.instructions.md)` and `[Layer 3C](./layer-3c-prompt-files-factory.instructions.md)`.
- Size target: 200–400 words. Split large topics.

## Verify & Bootstrap
- Create missing file under `memory-bank/instructions/` only.
- If overlap exists, replace duplication with a relative link.
- Do not change existing `applyTo`.
- Log brief changes in `memory-bank/progress.md`.

## Review Gate
- `description` present and concrete.
- No new or modified `applyTo` without explicit approval.
- Links resolve. Prefer relative links for internal targets; allow external links when value-add and reputable.
- No duplication. Within size target.

## Related content

- See sibling layers for complementary guidance:
  - [Layer 1 — Foundation](./layer-1-verify-and-bootstrap.instructions.md)
  - [Layer 2 — Development Environment](./layer-2-verify-and-bootstrap.instructions.md)
