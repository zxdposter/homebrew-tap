cask "clipshelf" do
  version "0.9.0"
  sha256 "14c0d6a68b7f23aec7c7598677ae202c2531ead574217a0e39d3a24b91c8e596"

  url "https://github.com/zxdposter/ClipShelf/releases/download/v#{version}/ClipShelf-#{version}-macOS-arm64.dmg"
  name "ClipShelf"
  desc "Clipboard manager with searchable history and collections"
  homepage "https://github.com/zxdposter/ClipShelf"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "ClipShelf.app"
end
