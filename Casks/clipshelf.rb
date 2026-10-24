cask "clipshelf" do
  version "0.10.1"
  sha256 "6f747688bc7d0cced28b1ce13f6c78d20f73712c4d553b910abd58d98af78fd8"

  url "https://github.com/zxdposter/ClipShelf/releases/download/v#{version}/ClipShelf-#{version}-macOS-arm64.dmg"
  name "ClipShelf"
  desc "Clipboard manager with searchable history and collections"
  homepage "https://github.com/zxdposter/ClipShelf"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "ClipShelf.app"
end
