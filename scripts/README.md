# Scripts Directory

This directory contains language-agnostic scripts for project management and initialization.

## Idempotent Initializer

- `init.sh`: Safe to run repeatedly. Validates foundation files, sets permissions, initializes git if needed, and prints project status.

## Usage

Run `./scripts/init.sh` to verify and bootstrap the project foundation.

## Guidelines

- Scripts are designed to be idempotent (safe to rerun).
- They perform checks before making changes.
- Output includes timestamps and status information.
