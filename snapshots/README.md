# Ahmyzsh Snapshots

This directory contains AI agent context bundles - complete flattened extracts of the ahmyzsh codebase for analysis by AI systems.

## Bundle Directory

**Location:** `bundle/`

Contains timestamped snapshots of the complete ahmyzsh codebase.

### Files

- `ahmyzsh-bundle-LATEST.sh` - **Real file in `snapshots/` root** (git-tracked for versioning)
- `bundle/ahmyzsh-bundle-TIMESTAMP.sh` - Individual timestamped snapshots (git-ignored)

**Git Strategy:**
- Timestamped snapshots in `bundle/`: Entire folder ignored by git (prevent repository bloat)
- `LATEST.sh` in `snapshots/`: Tracked by git (allows versioning the latest state)

## Creating Snapshots

### Usage

```bash
# From anywhere in the ahmyzsh project tree:
bash scripts/tools_assemble-ahmyzsh-bundle.sh [--minimal] [--commit HASH]

# Examples:
cd /projects/ahmyzsh
bash scripts/tools_assemble-ahmyzsh-bundle.sh

# Minimal mode (core files only, ~3K lines)
bash scripts/tools_assemble-ahmyzsh-bundle.sh --minimal

# With commit hash
bash scripts/tools_assemble-ahmyzsh-bundle.sh --commit abc123def456

# From anywhere
bash /projects/ahmyzsh/scripts/tools_assemble-ahmyzsh-bundle.sh --minimal
```

### Options

- `--minimal` - Extract only core bootstrap and key utility files (~20 files, ~3K lines)
- `--commit HASH` - Include commit hash in snapshot metadata

### Output

Snapshots are automatically placed in `snapshots/bundle/` with:

- **Timestamped files:** `ahmyzsh-bundle-YYYYMMDD-HHMMSS.sh` (local use, git-ignored)
- **Latest file:** `ahmyzsh-bundle-LATEST.sh` (real file, git-tracked for versioning)
- **Metadata header:** Includes project root, generation time, mode, commit, and purpose
- **Boot sequence documentation:** Explains the complete initialization order
- **Clean code:** All files appended with clear section headers (not commented out)

## Snapshot Structure

Each snapshot contains:

1. **Header** - Project info, generation timestamp, mode
2. **Boot sequence documentation** - Full initialization order with descriptions
3. **File sections** - Each file preceded by:
   - Load order (if applicable)
   - Relative path
   - Full path
   - File content
   - End marker

## Use Cases

### For AI Agents

Pass the LATEST snapshot to AI systems for:
- Understanding complete codebase structure
- Analyzing boot sequence and initialization
- Debugging configuration issues
- Understanding relationships between modules
- Generating improvements or refactorings

### For Documentation

Use snapshots to:
- Create frozen documentation of a specific version
- Compare changes between versions
- Archive working configurations
- Share with stakeholders

## Modes Comparison

### MINIMAL Mode (~3K lines, ~114KB)

Best for AI agents. Contains:

- 6 core bootstrap files (entry, functions, bootstrap, settings)
- 4 key path and layout files
- 10 sample function files

Good for quick analysis and understanding core structure.

### FULL Mode (~30K+ lines, varies)

Complete extraction. Contains:

- All core bootstrap files
- All paths, layouts, compute-path files
- All function definitions
- All aliases
- All environment files
- All scripts and sources
- All completions

Good for exhaustive analysis and complete reference.

## Example Snapshot Header

```
# =============================================================================
# AHMYZSH SNAPSHOT - AI AGENT CONTEXT BUNDLE
# =============================================================================
# Project Root: /projects/ahmyzsh
# Generated: 2025-11-02T11:52:32Z
# Commit: abc123def456
# Mode: minimal
#
# Purpose:
#  - Complete context snapshot for AI agent analysis
#  - Single-file reference of ahmyzsh architecture and boot sequence
#  - Facilitates code understanding and troubleshooting by AI systems
#
# Location: /projects/ahmyzsh/snapshots/bundle/ahmyzsh-bundle-20251102-065250.sh
# =============================================================================
```

## Script Details

**Location:** `scripts/tools_assemble-ahmyzsh-bundle.sh`

**Features:**

- ✓ Location-agnostic (run from anywhere)
- ✓ Automatic path resolution
- ✓ Deterministic file ordering
- ✓ Error handling for missing files
- ✓ Copies to both timestamped and LATEST files
- ✓ Supports both minimal and full extraction

**Implementation:**

- Detects project root from script location (scripts/ folder)
- Creates output in `snapshots/bundle/` with timestamp
- Also copies to `ahmyzsh-bundle-LATEST.sh` (versioned, not symlinked)
- Follows actual boot sequence from MAIN-FUNCTIONS.sh
- Maintains deterministic order (sorted files)
- Includes comprehensive documentation

## Git Version Control

The snapshots support git versioning:

```bash
# Generate snapshot (creates both timestamped and LATEST)
bash scripts/tools_assemble-ahmyzsh-bundle.sh --minimal

# Track LATEST in git (timestamped files are ignored)
git add snapshots/bundle/ahmyzsh-bundle-LATEST.sh
git commit -m "Update snapshot: feature/xyz complete"

# LATEST is always up-to-date, timestamped files are local artifacts
```

**Strategy:**
- ✅ `ahmyzsh-bundle-LATEST.sh` - Tracked (versioned state)
- ❌ `ahmyzsh-bundle-YYYYMMDD-HHMMSS.sh` - Git-ignored (local artifacts)

## Integration with AI Workflows

1. Generate snapshot: `bash scripts/tools_assemble-ahmyzsh-bundle.sh --minimal`
2. Version control: `git add snapshots/bundle/ahmyzsh-bundle-LATEST.sh`
3. Pass LATEST snapshot to AI system/agent
4. AI analyzes complete codebase in single file
5. Reference for AI-generated improvements or documentation
6. Repeat: Make changes → Generate snapshot → Commit → Share with AI
