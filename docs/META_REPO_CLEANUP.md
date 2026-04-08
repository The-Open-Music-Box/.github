# Meta-Repository Documentation Cleanup

## Overview

This document explains the cleanup of markdown documentation files at the root of the TheOpenMusicBox meta-repository.

## Problem Statement

Several markdown files existed at the root of the local meta-repository (`/Users/jonathanpiette/github/theopenmusicbox/`):
- `CICD_SETUP.md` (7.6KB)
- `LOCAL_CI_SETUP.md` (4KB)
- `CONTRIBUTING.md` (12KB)
- `CLAUDE.md` (814 bytes)

These files were **not version controlled** and needed evaluation for relevance and proper organization.

## Analysis & Decisions

### Files to Keep (at meta-repo root)
- **CONTRIBUTING.md** - Standard GitHub contribution guidelines, should remain at project root for visibility
- **CLAUDE.md** - Workflow instructions for Claude Code tool, convention is to keep at root

### Files to Remove (obsolete/redundant)

#### CICD_SETUP.md
- **Status**: REDUNDANT - Content is covered more comprehensively in `docs/CICD_DOCUMENTATION.md` (945 lines vs 284 lines)
- **Decision**: DELETE
- **Rationale**: The larger documentation file contains all relevant information plus additional details

#### LOCAL_CI_SETUP.md
- **Status**: OBSOLETE - Contains documentation for `act` tool which is no longer used
- **Decision**: DELETE
- **Rationale**: The `act` tool for running GitHub Actions locally is no longer part of the development workflow. The project now uses self-hosted GitHub Actions runners in Docker containers instead.
- **Historical Content**:
  - How to install and use `act` tool
  - `.actrc` configuration files
  - Platform mapping for self-hosted runners
  - Troubleshooting act-specific issues

## Action Items

### Completed
- [x] Evaluate each markdown file at meta-repo root
- [x] Compare with existing documentation in `docs/`
- [x] Create this cleanup guide

### Recommended Actions
- [x] Confirm with maintainer if `act` tool is still used (CONFIRMED: No longer used)
- [x] Delete LOCAL_CI_SETUP.md (obsolete - act tool no longer used)
- [x] Delete CICD_SETUP.md (confirmed redundant)
- [x] Keep CONTRIBUTING.md and CLAUDE.md at root

## Notes

The meta-repository at `/Users/jonathanpiette/github/theopenmusicbox/` is not a Git repository itself - it's a collection of submodules. Documentation files at its root are **local only** and not version controlled.

For project-wide documentation that should be version controlled, consider:
1. Using this `.github` repository (organization-wide docs)
2. Creating a dedicated `docs` repository
3. Adding documentation to the most relevant component repository

## Related Issues

- Issue #3: docs: cleanup markdown files at meta-repository root
