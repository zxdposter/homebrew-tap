cask "clipshelf" do
  version "0.12.0"
  sha256 "1dd5425af362222cfa1ec374555adac197fbe94234c9cb36dc3b53a55ed9ac1d"

  url "https://github.com/zxdposter/ClipShelf/releases/download/v#{version}/ClipShelf-#{version}-macOS-arm64.dmg"
  name "ClipShelf"
  desc "Clipboard manager with searchable history and collections"
  homepage "https://github.com/zxdposter/ClipShelf"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "ClipShelf.app"
end
