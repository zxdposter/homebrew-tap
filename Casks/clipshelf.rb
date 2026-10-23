cask "clipshelf" do
  version "0.9.7"
  sha256 "f2c73220517154b14dc5c0aa745f3f0f686db6e77cb443da5357e477fa7deca1"

  url "https://github.com/zxdposter/ClipShelf/releases/download/v#{version}/ClipShelf-#{version}-macOS-arm64.dmg"
  name "ClipShelf"
  desc "Clipboard manager with searchable history and collections"
  homepage "https://github.com/zxdposter/ClipShelf"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "ClipShelf.app"
end
