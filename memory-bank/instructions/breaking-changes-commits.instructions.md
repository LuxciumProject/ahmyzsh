---
description: Breaking Changes — when and how to declare them in commits.
---

<!-- memory-bank/instructions/breaking-changes-commits.instructions.md -->

# Breaking Changes — Guidance

- Use `!` in the commit header only for real API or behavior breaks.
- Explain the breaking change in the body under a `BREAKING CHANGE:` section.
- Provide migration steps, examples, and before/after behavior.
- Coordinate versioning per SemVer: bump MAJOR when introducing breaking changes.
- Prefer deprecation paths before removal when feasible.
