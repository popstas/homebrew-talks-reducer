# popstas/apps

Homebrew tap for macOS apps by [popstas](https://github.com/popstas).

```bash
brew trust --tap popstas/apps
brew install --cask popstas/apps/talks-reducer
brew install --cask --no-quarantine popstas/apps/ccfzf-picker
```

Homebrew 6.0.0+ refuses to load a cask from a third-party tap until the tap is
trusted, so `brew trust` comes first — once per tap, not per app. No separate
`brew tap` is needed: `brew install user/tap/token` taps the repository itself.

| App | What it does |
| --- | --- |
| [talks-reducer](https://github.com/popstas/talks-reducer) | Removes silent parts from video recordings |
| [ccfzf-picker](https://github.com/popstas/ccfzf-picker) | Picker for Claude Code sessions living on this and other machines |

## Gatekeeper

None of these apps is signed with an Apple Developer ID.

`ccfzf-picker` needs `--no-quarantine`, otherwise Gatekeeper refuses it with a
"damaged" message that looks like a broken build rather than a missing
signature. `talks-reducer` installs normally and only warns on first launch —
allow it in **System Settings > Privacy & Security > Open Anyway**.

`ccfzf-picker` is Apple Silicon only.

## Updates

Casks are rewritten by the release workflow of the app's own repository:
version and sha256 are replaced on every tag. Editing them here by hand lasts
until the next release.
