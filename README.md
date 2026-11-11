# Homebrew Tap

Homebrew downloads for [ClipShelf](https://github.com/zxdposter/ClipShelf).

## Install

Requires an Apple silicon or Intel Mac running macOS 14 or later.

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

ClipShelf 0.14.0 has not been notarized by Apple. If macOS blocks opening it, verify the source and review System Settings → Privacy & Security → Open Anyway.


Version 0.14.0 upgrades the history storage format. Quit ClipShelf before updating and back up the entire `~/Library/Application Support/ClipShelf` directory, including `history.plist.data`. Older app versions cannot read the upgraded history.
