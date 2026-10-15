# Contributing to the craft apps

The apps are dual-licensed under MIT OR Apache-2.0. By contributing, you license your work the same way.

All work is clean-room: don't copy code, assets, icons, fonts or documentation from the reference products or any other closed source.

## Pick an issue

- **Bugs:** any open issue labeled `type: bug`.
- **Features:** only issues labeled `status: accepted`.
- **New contributors:** issues labeled `good first issue`.

## Claim it

1. Check that the issue has no `status: claimed` label and no open PR that references it.
2. Comment `/claim`. The claim lasts 7 days, or while you have an open PR that says `Fixes #<n>`.
3. Comment `/unclaim` if you stop.

## Pull requests

- One issue per PR, with `Fixes #<n>`, and nothing unrelated.
- CI passes.
- Behaviour changes include tests. Bug fixes include a test that fails without the fix.
- UI changes include before and after screenshots.
- Open a draft PR early. Keep the `Status:` line at the top of the description current: `in progress`, `ready for review` or `blocked: <reason>`.

A PR merges after one approval from a maintainer who isn't the author. Until your first PR merges in a repo, keep at most 3 open PRs there.

Coding agents follow [AGENTS.md](AGENTS.md). You are responsible for what you submit, whichever tool wrote it.

Changes that affect several apps go through an [RFC](rfcs/).

## Conduct

We follow the [Code of Conduct](CODE_OF_CONDUCT.md). Report problems with GitHub's **Report content** option.
