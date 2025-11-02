---
description: Read-only research across codebase and trusted docs; produce actionable syntheses with references.
---

<!-- memory-bank/prompts/research.prompt.md -->

# Research
Study the codebase and authoritative documentation to answer targeted questions and propose next steps.
Avoid edits unless explicitly requested. Prefer citations and reproducibility.

## Slash Command: /research - targeted code and docs research
This command sets a read-only state focused on evidence gathering, link validation, and concise recommendations.

> [!IMPORTANT]
> `/research` has been called by the user to conduct targeted research. The state above applies for this run.

### Context & Activation
- **Scope:** Files and directories relevant to the question plus authoritative docs.
- **State:** Use the Research mode: [research.chatmode.md](../chatmodes/research.chatmode.md). Follow
  [Layer 3A](../instructions/layer-3a-custom-instructions-factory.instructions.md) and
  [Layer 3B](../instructions/layer-3b-chatmodes-factory.instructions.md).
- **Inputs:** `${input:topic}` (one line), `${input:paths}` (comma-separated, optional), `${selection}` optional.
- **Safety:** No file edits by default. No speculative claims. Cite links.

### Goal
Deliver a brief, accurate synthesis with concrete references and clear next actions.

### Output format
Return a Markdown block with:

- Summary (≤ 6 bullets)
- Sources (relative paths and URLs)
- Recommendations (≤ 5 bullets)

### Inputs
- `${input:topic}` (one line)
- `${input:paths}` (optional)
- `${selection}` (optional)

### Steps / Rules
- Read relevant files and authoritative docs.
- Extract facts; avoid conjecture.
- If information is missing, state that clearly and propose how to obtain it.
- Link mode and rules: [Research mode](../chatmodes/research.chatmode.md), [3A rules](../instructions/layer-3a-custom-instructions-factory.instructions.md).

### Examples
**Input:** `${input:topic}=timer functions`, `${input:paths}=core/functions/`

**Expected Output:**
- Summary: timer_ base; timer_now; timer_from_then; timer_all tracked globally
- Sources: core/functions, README refs
- Recommendations: add tests; measure overhead; document units

### Edge cases / Stop criteria
- If the topic is too broad, narrow scope and ask a focused follow-up.
- If no authoritative source exists, return “insufficient evidence”.
- Do nothing if already compliant.
