cask "clipshelf" do
  arch arm: "arm64", intel: "x86_64"

  version "0.12.1"
  sha256 arm:   "c03230d47822d3bf2281acdac26e906a1dbe77cfa74ba1183eeb8384398dee98",
         intel: "066d48a4d6ae06bb53403a81a3bfd5c2db03bf9a930dff0d24017c24908fd418"

  url "https://github.com/zxdposter/ClipShelf/releases/download/v#{version}/ClipShelf-#{version}-macOS-#{arch}.dmg"
  name "ClipShelf"
  desc "Clipboard manager with searchable history and collections"
  homepage "https://github.com/zxdposter/ClipShelf"

  depends_on macos: :sonoma

  app "ClipShelf.app"
end
