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

When a local `ClipShelf Release Signing` code-signing identity and its private key are available, installation and upgrade re-sign and verify the installed app using that identity. Otherwise the release signature is retained. No certificate is created and no ad-hoc signing is performed. Changing signing identity may require granting Accessibility permission again; local signing is not Apple notarization.

Version 0.14.0 upgrades the history storage format. Quit ClipShelf before updating and back up the entire `~/Library/Application Support/ClipShelf` directory, including `history.plist.data`. Older app versions cannot read the upgraded history.
