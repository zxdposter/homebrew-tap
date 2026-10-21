# Homebrew Tap

Homebrew downloads for [ClipShelf](https://github.com/zxdposter/ClipShelf).

## Install

Requires an Apple silicon Mac running macOS 14 or later.

```sh
brew install --cask zxdposter/tap/clipshelf
```

If Homebrew asks for explicit trust:

```sh
brew trust --cask zxdposter/tap/clipshelf
brew install --cask zxdposter/tap/clipshelf
```

## Update

```sh
brew update
brew upgrade --cask zxdposter/tap/clipshelf
```

## Uninstall

```sh
brew uninstall --cask clipshelf
```

Clipboard history and preferences are retained.

ClipShelf 0.9.1 has not been notarized by Apple. If macOS blocks opening it, verify the source and review System Settings → Privacy & Security → Open Anyway.
