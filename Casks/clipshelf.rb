cask "clipshelf" do
  version "0.9.1"
  sha256 "a34ed7de2c2c609f425f3c83678228abbee913d26c72316d8ec5f0ee112e13e2"

  url "https://github.com/zxdposter/ClipShelf/releases/download/v#{version}/ClipShelf-#{version}-macOS-arm64.dmg"
  name "ClipShelf"
  desc "Clipboard manager with searchable history and collections"
  homepage "https://github.com/zxdposter/ClipShelf"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "ClipShelf.app"
end
