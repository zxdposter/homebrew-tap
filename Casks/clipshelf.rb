cask "clipshelf" do
  version "0.9.3"
  sha256 "56f22df32cf0aaa786c15cb2661c60335c700ea4e71daef514e0b9949698dbf5"

  url "https://github.com/zxdposter/ClipShelf/releases/download/v#{version}/ClipShelf-#{version}-macOS-arm64.dmg"
  name "ClipShelf"
  desc "Clipboard manager with searchable history and collections"
  homepage "https://github.com/zxdposter/ClipShelf"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "ClipShelf.app"
end
