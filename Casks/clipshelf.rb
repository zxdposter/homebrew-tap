cask "clipshelf" do
  version "0.9.2"
  sha256 "3674cce3ee69035b7056ea2771e14c566f3c86017ac627b4f1bb45274cb75af2"

  url "https://github.com/zxdposter/ClipShelf/releases/download/v#{version}/ClipShelf-#{version}-macOS-arm64.dmg"
  name "ClipShelf"
  desc "Clipboard manager with searchable history and collections"
  homepage "https://github.com/zxdposter/ClipShelf"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "ClipShelf.app"
end
