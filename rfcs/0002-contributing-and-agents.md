# RFC-0002: Contributing, coding agents and `/claim`

- Status: draft
- Discussion: PR #4

## Summary
Rules for pull requests, a shared section for every repo's `AGENTS.md`, a `/claim` command so any contributor can claim an issue, and one required check per repo. Adds `CONTRIBUTING.md`, `AGENTS.md`, a default PR template and the files each app repo gets.

## Proposal

**Pull requests** (`CONTRIBUTING.md`): one linked issue and nothing unrelated; CI passes; tests for behaviour changes, and a failing-first test for bug fixes; screenshots for UI changes. One approval from a maintainer who isn't the author. Contributors keep at most 3 open PRs in a repo until their first one merges there.

**Which work.** Bugs are open to anyone. Features need `status: accepted` before anyone writes code.

**`AGENTS.md`.** The org section (15 rules) goes at the top of each app repo's existing `AGENTS.md`, between `org:start` and `org:end` markers. The repo's own content stays below it.

**`/claim`.** A reusable workflow in `storytold/craft-common-actions`, called from each app repo by a 12-line workflow:
- `/claim` adds `status: claimed` for 7 days. It refuses if someone else holds an active claim, if the issue is a feature without `status: accepted`, or if it is labeled `status: blocked` or `status: needs-design`. Claiming again extends your own claim.
- `/unclaim` works for the claimant or any maintainer.
- A daily run releases expired claims unless an open PR references the issue.
- The claim record is a hidden marker in the bot's own comment. Only markers from `github-actions[bot]` count.

**Status line.** Each PR description starts with `Status: in progress | ready for review | blocked: <reason>`, edited in place.

**Checks.** Each repo has one check command, run by CI (most apps already have `cargo xtask ci`). A ruleset on the default branch requires it to pass and one approval from a maintainer other than the author, and blocks force-pushes.

## Alternatives
- *Assignment instead of `/claim`.* Contributors who claim work get GitHub's Triage role and assign themselves. No bot, but an owner has to grant the role first.
- *Label lines* ([craft-libs#119](https://github.com/storytold/craft-libs/issues/119)). Contributors write `labels: status:claimed` in a comment, and someone with label access applies it. No bot.
- *Contributor guidelines in craft-libs* ([craft-libs#37](https://github.com/storytold/craft-libs/issues/37), [#38](https://github.com/storytold/craft-libs/pull/38)). Per-repo guidance for craft-libs; it could link to the shared rules here.

## Rollout
A PR to `craft-common-actions` adds the workflow. One PR per app repo adds the caller workflow and the org section of `AGENTS.md`, and adds the `Status:` line to any PR template the repo already has. An owner creates the org `.github` repo from `org-defaults/` and adds the rulesets.
