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
- **Status**: PARTIALLY USEFUL - Contains unique information about `act` tool for running GitHub Actions locally
- **Decision**: KEEP temporarily, content should be:
  1. Integrated into a versioned documentation repo (if `act` is still actively used)
  2. Deleted if `act` is no longer part of the development workflow
- **Recommendation**: Ask project maintainer if `act` tool documentation is still needed
- **Unique Content**:
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
- [ ] Confirm with maintainer if `act` tool is still used
- [ ] If YES: Integrate LOCAL_CI_SETUP.md content into versioned docs
- [ ] If NO: Delete LOCAL_CI_SETUP.md
- [ ] Delete CICD_SETUP.md (confirmed redundant)
- [ ] Keep CONTRIBUTING.md and CLAUDE.md at root

## Notes

The meta-repository at `/Users/jonathanpiette/github/theopenmusicbox/` is not a Git repository itself - it's a collection of submodules. Documentation files at its root are **local only** and not version controlled.

For project-wide documentation that should be version controlled, consider:
1. Using this `.github` repository (organization-wide docs)
2. Creating a dedicated `docs` repository
3. Adding documentation to the most relevant component repository

## Related Issues

- Issue #3: docs: cleanup markdown files at meta-repository root
