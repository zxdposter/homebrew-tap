cask "clipshelf" do
  version "0.9.6"
  sha256 "fdd2db0b068b06bdeb6466cf58a253e7a439e17f1e720e2b601b5ff39d798706"

  url "https://github.com/zxdposter/ClipShelf/releases/download/v#{version}/ClipShelf-#{version}-macOS-arm64.dmg"
  name "ClipShelf"
  desc "Clipboard manager with searchable history and collections"
  homepage "https://github.com/zxdposter/ClipShelf"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "ClipShelf.app"
end
