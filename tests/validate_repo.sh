#!/bin/sh

set -eu

ROOT_DIR=$(CDPATH= cd -- "$(dirname "$0")/.." && pwd)

require_file() {
  if [ ! -f "$1" ]; then
    echo "missing required file: $1" >&2
    exit 1
  fi
}

require_contains() {
  file="$1"
  pattern="$2"

  if ! grep -Fq -- "$pattern" "$file"; then
    echo "missing expected content in $file: $pattern" >&2
    exit 1
  fi
}

README_FILE="$ROOT_DIR/README.md"
CONTRIBUTING_FILE="$ROOT_DIR/CONTRIBUTING.md"

require_file "$README_FILE"
require_file "$CONTRIBUTING_FILE"

require_contains "$README_FILE" "# awesome-bti"
require_contains "$README_FILE" "科学有效性"
require_contains "$README_FILE" "## 标签说明"
require_contains "$README_FILE" "## Viral / Meme / Parody"
require_contains "$README_FILE" "## Research / Research-Inspired"
require_contains "$README_FILE" "## Career / Productivity / Workplace"
require_contains "$README_FILE" "## Relationship / Social / Communication"
require_contains "$README_FILE" "## Fandom / Pop Culture / Niche Worlds"
require_contains "$README_FILE" "## Meta / Collections / Tools"
require_contains "$README_FILE" "SBTI"
require_contains "$README_FILE" "research-mbti"
require_contains "$README_FILE" "Tags:"

require_contains "$CONTRIBUTING_FILE" "# Contributing"
require_contains "$CONTRIBUTING_FILE" "## 收录标准"
require_contains "$CONTRIBUTING_FILE" "## 条目模板"

echo "repository structure checks passed"
