# RFC-0001: Roles and apps

- Status: draft
- Discussion: PR #3

## Summary
Defines three roles, based on the GitHub teams that already exist, and how apps join, graduate and are archived. Adds `GOVERNANCE.md`, `APPS.md`, `CODE_OF_CONDUCT.md`, `SECURITY.md` and an app donation issue form.

## Proposal
The rules are in `GOVERNANCE.md` in this PR:

- **Roles:** owners (the org's admins), maintainers (`craft-app-team` and the `craft-app-team-<app>` teams) and contributors (anyone). The GitHub teams are the record; there is no separate list.
- **New maintainers:** anyone can suggest one, including themselves, in an issue here. The owners decide.
- **Apps** are `incubating`, `graduated` or `archived`. Every current app starts as `incubating`. A donated app needs a licence of MIT OR Apache-2.0, clean-room code, documented build commands and someone to work on it.
- **Conduct:** Contributor Covenant 2.1. Reports go through GitHub's "Report content" option, and the owners handle them.
- **Security:** reports go through GitHub's private vulnerability reporting.

## Rollout
An owner enables private vulnerability reporting and content reports to admins on every repo.
