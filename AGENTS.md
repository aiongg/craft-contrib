<!-- org:start: copied from storytold/craft-contrib/AGENTS.md. Change it there, by RFC. -->
# Rules for coding agents

These rules apply in every storytold craft app repo. The repo's own rules follow this section and take precedence where they are stricter.

1. Clean room: don't copy code, assets, icons, fonts or documentation from the reference products or any other closed source.
2. Never crash: follow the repo's never-crash rules.
3. UI or behaviour that more than one app needs goes to craft-libs first. The app PR then adopts it.
4. Work only on an issue: an open `type: bug`, or a feature labeled `status: accepted`.
5. Before starting, check that the issue has no `status: claimed` label and no open PR that references it. Then comment `/claim` on it.
6. If the issue is unclear, ask one specific question on the issue and wait.
7. One issue per PR. Change only what the issue needs.
8. Open a draft PR early, with `Fixes #<n>` in the description.
9. Don't add a dependency without saying why in the PR.
10. Behaviour changes need tests. Bug fixes need a test that fails without the fix. Never delete, skip or weaken a test to make CI pass.
11. UI changes: attach before and after screenshots.
12. Run the repo's check command before marking the PR ready for review.
13. Report progress by editing the `Status:` line at the top of the PR description, not with comments.
14. Comment `/unclaim` if you stop working on an issue.
15. Don't close, label or claim issues for other people.
<!-- org:end -->

## This repo (craft-contrib)

- No build. Changes to rule files go through an RFC ([RFC-0000](rfcs/0000-decision-process.md)).
- Rule files state rules. Reasons go in the RFC.
