<!-- sandbox/README.md -->

# Disposable shell laboratory

This directory provides a repeatable AhMyZSH installation that can be explored,
edited, broken, and recreated without installing the shell configuration into
the real home directory. It is Kubuntu-oriented at the host boundary and uses a
minimal Ubuntu 24.04 LTS userland inside the container.

## Protection model

Each session starts from a locally built image containing a snapshot of the
checkout. The container has its own home and writable filesystem layer. The
launcher does **not** mount the host home, checkout, SSH/GPG agent, container
socket, display socket, or devices. The normal session also drops every Linux
capability, prevents privilege gain, limits process count, and has no network by
default.

Podman can inject host mounts through an external `mounts.conf`. Before every
session the launcher resolves the effective user/system file and refuses to
start if it contains an active mount. PID, IPC, cgroup, systemd and privileged
modes are also set explicitly rather than inherited from configurable defaults.

Exiting Zsh removes the complete writable container layer. The next launch
returns to the clean installed image. Source changes on the host become visible
only after an explicit rebuild.

This boundary prevents accidental host-file changes; it is not a virtual
machine and shares the host kernel. Do not treat it as sufficient isolation for
actively malicious code or kernel-exploit research.

## 🟡🔒 One-time Kubuntu prerequisite

Install Podman using the distribution package. Run the launcher as the normal
desktop user, never with `sudo`:

```bash
cd /projects/ahmyzsh
sudo apt update
sudo apt install podman
./sandbox/ahm-lab doctor
```

Konsole is optional. `shell` works in any interactive terminal.

## 🟠🧱 First disposable session

Open a new Konsole window and build automatically on the first run:

```bash
cd /projects/ahmyzsh
./sandbox/ahm-lab konsole
```

Or remain in the current terminal:

```bash
cd /projects/ahmyzsh
./sandbox/ahm-lab shell
```

Inside the lab, useful first commands are:

```zsh
cd /opt/ahmyzsh
ahm doctor
ahm profile
print -r -- "$AHMYZSH_ROOT"
```

The `/opt/ahmyzsh` tree is a disposable copy. Edit it, rerun the installer, or
damage the home deliberately. Type `exit`, launch again, and every session
change is gone.

## Lifecycle and deliberate relaxations

| Command | Effect |
|---|---|
| `./sandbox/ahm-lab doctor` | Read-only host prerequisite report |
| `./sandbox/ahm-lab build` | Build or update the local image from this checkout |
| `./sandbox/ahm-lab shell` | Disposable, unprivileged, offline session |
| `./sandbox/ahm-lab konsole` | The same session in a new Konsole window |
| `./sandbox/ahm-lab admin` | Container-root session for disposable `apt` trials |
| `./sandbox/ahm-lab konsole-admin` | Admin session in a new Konsole window |
| `./sandbox/ahm-lab shell --online` | Permit outbound network for this one session |
| `./sandbox/ahm-lab shell --rebuild` | Rebuild from current files, then enter |
| `./sandbox/ahm-lab shell --refresh` | Pull the current base and rebuild without cache |
| `./sandbox/ahm-lab clean` | Remove only the local AhMyZSH lab image |

`admin` is root only inside Podman's rootless user namespace. It retains the
default rootless-container capabilities so package installation can work, but
still has no host mount, no network unless `--online` is supplied, and no path
to host files through the launcher. Prefer the normal session unless
system-package mutation is the experiment.

Ubuntu 24.04 LTS is the conservative default. To test an intentional base
migration, choose another supported year-month tag and force a fresh build:

```bash
cd /projects/ahmyzsh
AHMYZSH_LAB_UBUNTU_VERSION=26.04 ./sandbox/ahm-lab shell --refresh
```

## Fonts and color

Konsole performs text rendering on the host, so a font installed only in a
container cannot change the host Konsole profile. The lab therefore exercises
the shell installation without downloading duplicate container-local fonts.
The prompt stays colorful, but Powerlevel10k symbols require **MesloLGS NF** on
the host. `ahm doctor` marks this as a host-rendered concern while it is inside
the lab. Install the real project later, or run its font installer explicitly,
then select MesloLGS NF in the Konsole profile.

## Why Podman instead of Distrobox

Distrobox is valuable when the goal is close host integration. This laboratory
has the opposite goal: a disposable filesystem with no host-home mount. Plain
rootless Podman makes that boundary visible in one audited launcher command.
