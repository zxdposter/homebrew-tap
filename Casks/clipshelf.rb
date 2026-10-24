cask "clipshelf" do
  version "0.10.0"
  sha256 "cb899b88660f4f29523bfff4acf5d2a8efe675ea3a16dbd21f9023d9b47caef3"

  url "https://github.com/zxdposter/ClipShelf/releases/download/v#{version}/ClipShelf-#{version}-macOS-arm64.dmg"
  name "ClipShelf"
  desc "Clipboard manager with searchable history and collections"
  homepage "https://github.com/zxdposter/ClipShelf"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "ClipShelf.app"
end
