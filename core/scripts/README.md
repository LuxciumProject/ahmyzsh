# core/scripts/ — Utility and Administration Scripts

← Back to [core/README.md](../README.md) | [Repository README](../../README.md)

This directory contains standalone utility scripts for system administration, maintenance, and hardware configuration. Unlike the files in `core/bin/` (which are executable and on PATH), these scripts are typically run manually or sourced for reference — they are not part of the boot chain.

---

## Table of Contents

- [Files](#files)
- [Script Details](#script-details)
- [Notes](#notes)

---

## Files

| File | Purpose | Run As |
|------|---------|--------|
| [`install-docker.sh`](install-docker.sh) | Reinstall Docker CE on Fedora | `sh` / root |
| [`memory_tweaks.sh`](memory_tweaks.sh) | Display/adjust Linux kernel memory parameters | `bash` |
| [`Untitled-2.sh`](Untitled-2.sh) | Unnamed/work-in-progress script | Unknown |

---

## Script Details

### `install-docker.sh`

**Purpose:** Completely removes any existing Docker installation and reinstalls Docker CE, Docker CLI, and containerd from the official Docker repository.

**Interpreter:** `#!/bin/sh`

**Steps performed:**

1. `ls /var/lib/docker/` (verify Docker data directory)
2. `dnf remove` — removes all Docker variants:
   - `containerd.io`, `docker`, `docker-ce`, `docker-ce-cli`
   - `docker-client`, `docker-client-latest`, `docker-common`
   - `docker-engine`, `docker-engine-selinux`, `docker-selinux`
   - `docker-latest`, `docker-latest-logrotate`, `docker-logrotate`
3. `dnf install dnf-plugins-core`
4. `dnf config-manager --add-repo https://download.docker.com/linux/fedora/docker-ce.repo`
5. Prompts to verify GPG fingerprint: `060A 61C5 [...] 621E 9F35`
6. `dnf install docker-ce docker-ce-cli containerd.io gnome-boxes nvidia-docker2 usbguard-selinux`
7. Shows available Docker CE versions
8. `groupadd docker` + `usermod -aG docker $USER`

> ⚠️ **Warning:** This script runs destructive operations (`dnf remove`, `groupadd`) without confirmation prompts (the `sleep` commands are commented out). Run manually step by step in a production environment.

> 📝 **Note:** Includes `nvidia-docker2` — this script is tailored for systems with NVIDIA GPUs. If installing on a non-GPU system, remove `nvidia-docker2` from the install command.

**Requirements:**
- Fedora Linux
- `sudo` privileges
- Internet access to `download.docker.com`

---

### `memory_tweaks.sh`

**Purpose:** Displays current Linux kernel memory management parameters to aid in performance tuning. Reads values from `/proc/sys/vm/` and `/sys/` without modifying them.

**Interpreter:** `#!/usr/bin/env bash`

**Parameters displayed:**

| Parameter | Path | Purpose |
|-----------|------|---------|
| `vm.swappiness` | `/proc/sys/vm/swappiness` | Kernel swap aggressiveness (default: 60) |
| `vm.dirty_ratio` | `/proc/sys/vm/dirty_ratio` | Max % of memory that can be dirty |
| `vm.dirty_background_ratio` | `/proc/sys/vm/dirty_background_ratio` | % at which writeback starts |
| Transparent Huge Pages | `/sys/kernel/mm/transparent_hugepage/enabled` | THP mode |
| IO scheduler (NVMe) | `/sys/block/nvme0n1/queue/scheduler` | NVMe IO queue scheduler |
| IO scheduler (HDD) | `/sys/block/sda/queue/scheduler` | HDD IO queue scheduler |
| Readahead | `/sys/block/sda/queue/read_ahead_kb` | Readahead buffer size |
| `vm.dirty_writeback_centisecs` | `/proc/sys/vm/dirty_writeback_centisecs` | Writeback interval |
| `vm.dirty_expire_centisecs` | `/proc/sys/vm/dirty_expire_centisecs` | Time before dirty pages expire |

> 📝 **Note:** The file contains a commented-out line that would set `dirty_expire_centisecs` to 3000. To apply memory tweaks, uncomment and modify the relevant lines, but be aware this requires root.

**Recommended values for a desktop/workstation with NVMe:**
- `swappiness=10` (reduce swapping for better responsiveness)
- `dirty_ratio=20`, `dirty_background_ratio=5` (tuned for NVMe)
- IO scheduler: `none` or `kyber` for NVMe

---

### `Untitled-2.sh`

**Purpose:** Unknown — the filename suggests this was created as an unnamed VS Code buffer or work-in-progress.

> ⚠️ **Warning:** This file should be investigated, named appropriately, or removed. An "Untitled" script in a production repository is a maintenance hazard.

---

## Notes

### These Scripts Are Not Part of the Boot Chain

Unlike files in `core/functions/`, `core/aliases/`, etc., these scripts are **not** sourced during shell initialization. They must be run explicitly:

```shell
# Run a script manually:
bash /projects/ahmyzsh/core/scripts/memory_tweaks.sh

# Or for install-docker:
sudo sh /projects/ahmyzsh/core/scripts/install-docker.sh
```

### Adding New Scripts

Place administrative or utility scripts here when they:
- Are meant to be run once (setup, installation)
- Require manual review before execution
- Don't need to be on the PATH

For scripts that should be available as commands at the shell prompt, place them in `core/bin/` instead.

---

*← Back to [core/README.md](../README.md) | [Repository README](../../README.md)*
