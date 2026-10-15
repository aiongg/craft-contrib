#!/usr/bin/env bash
# Sync labels.yml to every non-archived repo in the org.
# Needs: gh (logged in with admin rights on the org's repos), yq (mikefarah) and jq.
# Usage: scripts/sync-labels.sh storytold [repo ...]
set -euo pipefail

ORG="${1:?usage: sync-labels.sh storytold [repo ...]}"; shift
LABELS="$(dirname "$0")/../labels.yml"

if [ "$#" -gt 0 ]; then
  REPOS=("$@")
else
  mapfile -t REPOS < <(gh repo list "$ORG" --no-archived --limit 500 --json name -q '.[].name')
fi

for repo in "${REPOS[@]}"; do
  echo "== $ORG/$repo"
  # Rename GitHub's defaults so existing issues keep their meaning (fails harmlessly if absent).
  gh label edit "bug"           --repo "$ORG/$repo" --name "type: bug"     2>/dev/null || true
  gh label edit "enhancement"   --repo "$ORG/$repo" --name "type: feature" 2>/dev/null || true
  gh label edit "documentation" --repo "$ORG/$repo" --name "type: docs"    2>/dev/null || true

  yq -o=json '.[]' "$LABELS" | jq -c . | while read -r label; do
    gh label create "$(jq -r .name <<<"$label")" --repo "$ORG/$repo" \
      --color "$(jq -r .color <<<"$label")" \
      --description "$(jq -r .description <<<"$label")" --force
  done
done
