# RFC-0003: Issues, labels and the backlog

- Status: draft
- Discussion: PR #5

## Summary
Thirteen shared labels, bug and feature issue forms, automatic closing only after a request for information goes unanswered, and a plan for the backlog: 10,034 open issues and PRs across 17 repos on 2026-10-15.

## Proposal

**Labels** (`labels.yml`, synced by `scripts/sync-labels.sh`):
- `type: bug`, `type: feature`, `type: docs`
- `status: needs-triage`, `status: accepted`, `status: claimed`, `status: needs-info`, `status: needs-design`, `status: blocked`
- `priority: high`
- `good first issue`, `help wanted`, `stale`

The script renames GitHub's default `bug`, `enhancement` and `documentation` labels to the `type:` labels, so existing issues keep them. Apps can add their own area labels.

**Issue forms** add a `type:` label and `status: needs-triage`. Blank issues are off.

**Stale.** Only items labeled `status: needs-info`: a reminder after 14 days, closed 16 days later. Nothing is closed for age alone.

**Backlog:**
1. Sync labels, and label open issues that have no status `status: needs-triage`.
2. PRs first. Where several PRs fix the same issue, keep the best one and close the others with a link to it. Close PRs that have conflicts or failing CI and no activity for 30 days, inviting a reopen after a rebase.
3. Then issues. Agents may propose duplicate clusters; a maintainer confirms and closes them. Feature requests that don't fit are closed as "not planned" with a reason.

Agents only propose closes and labels. A maintainer applies them.

## Alternatives
- *The scheme in [craft-libs#119](https://github.com/storytold/craft-libs/issues/119):* nine statuses covering issues and PRs, `p0` to `p3`, area and size labels, and written triage, review and sweep steps.

## Rollout
An owner runs the label sync and adds the issue forms to the org `.github` repo. One PR per app repo adds the stale workflow.
