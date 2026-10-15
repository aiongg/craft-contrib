# Governance

Reasons are in [RFC-0001](rfcs/0001-governance.md). Change this file through an RFC.

## Roles

| Role | Who | Can |
| --- | --- | --- |
| Owners | The storytold org's admins | Approve RFCs, accept and archive apps, manage teams and org settings, handle conduct reports |
| Maintainers | The `craft-app-team` team and each app's `craft-app-team-<app>` team | Review and merge PRs; label, close and mark duplicates |
| Contributors | Anyone | Open issues and PRs; use `/claim` |

The GitHub teams are the record of who holds each role. Maintainers have Write access through those teams; GitHub's Maintain role is not used. To suggest a new maintainer, including yourself, open an issue in this repo with links to your merged PRs or reviews. The owners decide and update the team.

## Decisions

- **Within one app:** maintainers decide in PR review. A ruleset on each default branch requires one approval from a maintainer who isn't the author, and blocks direct pushes and force-pushes.
- **Shared rules, apps and cross-app decisions:** an RFC, as in [RFC-0000](rfcs/0000-decision-process.md).
- **Unresolved:** the owners decide and record why.

## Apps

Every app is listed in [APPS.md](APPS.md) as `incubating`, `graduated` or `archived`.

**Donating an app.** Open an *App donation* issue in this repo. The owners accept it with a PR to `APPS.md` after 3 days, if:

1. The code is licensed under MIT OR Apache-2.0, or every copyright holder agrees to relicense it that way.
2. The code and assets are clean-room.
3. It builds from a clean checkout with documented commands.
4. At least one person will work on it.

**Graduating:** required CI checks on the default branch, an `AGENTS.md` with build and check commands, at least two maintainers on the app's team, and at least one tagged release.

**Archiving:** an app that no maintainer has worked on for 6 months is proposed for archiving by RFC.

## Conduct

We follow the [Code of Conduct](CODE_OF_CONDUCT.md). The owners handle reports. An owner involved in a report recuses themselves.
