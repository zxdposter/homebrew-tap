cask "clipshelf" do
  version "0.9.8"
  sha256 "3a7c3befadf05ca8f273d83b17abccc30f175424f68f5e3126ea0caebfec62f9"

  url "https://github.com/zxdposter/ClipShelf/releases/download/v#{version}/ClipShelf-#{version}-macOS-arm64.dmg"
  name "ClipShelf"
  desc "Clipboard manager with searchable history and collections"
  homepage "https://github.com/zxdposter/ClipShelf"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "ClipShelf.app"
end
