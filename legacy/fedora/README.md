<!-- legacy/fedora/README.md -->

# Fedora legacy boundary

Fedora, CUDA, `/usr/lib64`, DNF, KDE/Fedora packaging and old workstation
assumptions remain available through Git history and the existing historical
tree. They are intentionally excluded from the Kubuntu-first backbone.

Later migration will extract capabilities one at a time behind machine-profile
gates. Fedora material will not be ported by substituting `apt` for `dnf` inside
the old boot sequence.
