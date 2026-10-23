cask "clipshelf" do
  version "0.9.4"
  sha256 "9655caded41e8e1e507924751153a8ccdf4ca60b8c338bb8619e3019f437b34b"

  url "https://github.com/zxdposter/ClipShelf/releases/download/v#{version}/ClipShelf-#{version}-macOS-arm64.dmg"
  name "ClipShelf"
  desc "Clipboard manager with searchable history and collections"
  homepage "https://github.com/zxdposter/ClipShelf"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "ClipShelf.app"
end
