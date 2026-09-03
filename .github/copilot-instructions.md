# Copilot Project Guardrails

## Language and Standards
- **TypeScript** is the primary language for all new code.
- All public APIs and exported functions must use **TSDoc** for documentation.
- **Node.js 22+** is the baseline runtime; code must be compatible and tested against this version.

## Linting and Formatting
- **ESLint** must use a flat config (`eslint.config.js`), not legacy `.eslintrc`.
- All fixable ESLint rules should be set to **warnings** (not errors) to encourage, not block, progress.
- **Prettier** is integrated via `eslint-config-prettier` (do not use `eslint-plugin-prettier`).

## Memory-Bank Context
- The `memory-bank` directory is the canonical source of project context, standards, and workflow prompts.
- All Copilot and agent runs must reference the triad: `instructions/`, `prompts/`, and `chatmodes/`.

## Chat Mode Constraints
- Chat mode models and tools **must** match the authoritative configuration defined in
  `memory-bank/instructions/layer-3b-chatmodes-factory.instructions.md`.
- Do not duplicate or override the approved model or tools lists here; update the canonical
  `memory-bank` instructions instead if constraints change.

## Additional Notes
- Do not overwrite or remove existing files unless explicitly instructed.
- All new configuration must be additive and idempotent.
- See `memory-bank/instructions/` for further coding standards and project policies.
