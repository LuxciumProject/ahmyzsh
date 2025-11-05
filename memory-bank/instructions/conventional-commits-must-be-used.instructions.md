---
description: Conventional Commits — enforce structured commit messages for clarity and automation.
---

<!-- memory-bank/instructions/conventional-commits-must-be-used.instructions.md -->

# Conventional Commits — Policy

- Use Conventional Commits for all commits: `type(scope)!: short description`.
- Common types: feat, fix, docs, style, refactor, perf, test, build, ci, chore, revert.
- Scope is optional but recommended; keep it small and meaningful.
- Use `!` only for breaking changes. Explain breaking changes in the body.
- Keep subject ≤ 72 chars, imperative mood, no trailing period.
- Link issues in the footer using `Refs:` or `Closes:`.
- Prefer small, focused commits; avoid bundling unrelated changes.
