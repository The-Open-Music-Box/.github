#!/usr/bin/env bash
# cleanup_meta_repo.sh - Clean up redundant markdown files in meta-repository
#
# This script removes redundant markdown documentation files from the
# TheOpenMusicBox meta-repository root.

set -euo pipefail

# Define colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Meta-repo root (adjust if needed)
META_REPO_ROOT="/Users/jonathanpiette/github/theopenmusicbox"

echo "========================================="
echo "Meta-Repository Markdown Cleanup Script"
echo "========================================="
echo ""

# Check if we're in the right location
if [ ! -d "$META_REPO_ROOT" ]; then
    echo -e "${RED}Error: Meta-repository not found at $META_REPO_ROOT${NC}"
    exit 1
fi

cd "$META_REPO_ROOT"
echo "Working directory: $(pwd)"
echo ""

# Function to remove a file with confirmation
remove_file() {
    local file="$1"
    local reason="$2"

    if [ ! -f "$file" ]; then
        echo -e "${YELLOW}⚠ File not found: $file (already removed?)${NC}"
        return 0
    fi

    echo -e "${YELLOW}File: $file${NC}"
    echo "Reason: $reason"
    echo "Size: $(wc -l < "$file") lines"
    echo ""

    read -p "Remove this file? (y/N) " -n 1 -r
    echo ""
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        rm "$file"
        echo -e "${GREEN}✓ Removed: $file${NC}"
    else
        echo -e "${YELLOW}✗ Skipped: $file${NC}"
    fi
    echo ""
}

# Function to keep a file
keep_file() {
    local file="$1"
    local reason="$2"

    if [ ! -f "$file" ]; then
        echo -e "${RED}⚠ File not found: $file (missing?)${NC}"
        return 1
    fi

    echo -e "${GREEN}✓ Keeping: $file${NC}"
    echo "  Reason: $reason"
    echo ""
}

echo "=== Files to KEEP ==="
echo ""
keep_file "CONTRIBUTING.md" "Standard GitHub contribution guidelines"
keep_file "CLAUDE.md" "Claude Code workflow instructions"

echo ""
echo "=== Files to REMOVE ==="
echo ""

remove_file "CICD_SETUP.md" "Redundant - content covered in docs/CICD_DOCUMENTATION.md"

remove_file "LOCAL_CI_SETUP.md" "Obsolete - act tool no longer used in workflow"

echo "========================================="
echo "Cleanup complete!"
echo "========================================="
echo ""
echo "Remaining markdown files at root:"
ls -lh *.md 2>/dev/null || echo "  (none found)"
echo ""
echo "For more information, see:"
echo "  https://github.com/The-Open-Music-Box/.github/blob/docs/issue-3-md-cleanup/docs/META_REPO_CLEANUP.md"
