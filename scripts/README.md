# Scripts Directory

This directory contains language-agnostic scripts for project management, initialization, and tools.

## Tools

### AI Agent Snapshot Generator

- **Script**: `tools_assemble-ahmyzsh-bundle.sh`
- **Purpose**: Create AI-friendly snapshots of the complete ahmyzsh codebase
- **Usage**: `bash scripts/tools_assemble-ahmyzsh-bundle.sh [--minimal] [--commit HASH]`
- **Location Agnostic**: Works from any directory
- **Output**: Snapshots go to `snapshots/bundle/ahmyzsh-bundle-LATEST.sh`

**Quick Start:**

```bash
# Minimal mode (recommended for AI agents, ~3K lines)
bash scripts/tools_assemble-ahmyzsh-bundle.sh --minimal

# Full mode (all files, ~30K lines)
bash scripts/tools_assemble-ahmyzsh-bundle.sh

# With commit metadata
bash scripts/tools_assemble-ahmyzsh-bundle.sh --minimal --commit "$(git rev-parse HEAD)"
```

**Features:**
- 📍 Location agnostic (run from anywhere)
- 🎯 Two modes: minimal or full
- 📦 Timestamped snapshots
- 🔗 Latest symlink always current
- 📋 Boot sequence documentation included
- 🛡️ Robust error handling

See `../snapshots/README.md` for complete documentation.

### Idempotent Initializer

- **Script**: `init.sh`
- **Purpose**: Safe initialization, validation, and bootstrap
- **Usage**: `./scripts/init.sh`

Safe to run repeatedly. Validates foundation files, sets permissions, initializes git if needed, and prints project status.

## Guidelines

- Scripts are designed to be idempotent (safe to rerun).
- They perform checks before making changes.
- Output includes timestamps and status information.
- Use `--help` flag for detailed usage (where applicable).
