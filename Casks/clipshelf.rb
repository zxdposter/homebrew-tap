cask "clipshelf" do
  arch arm: "arm64", intel: "x86_64"

  version "0.14.1"
  sha256 arm:   "745fb9d74ce858e2c351dffa705311adf44be578014202c6c210008c2c7b10cf",
         intel: "fab70677910553f7c5671c0dd0e8862a47511d8e428fd585fa586e0e89e00fc5"

  url "https://github.com/zxdposter/ClipShelf/releases/download/v#{version}/ClipShelf-#{version}-macOS-#{arch}.dmg"
  name "ClipShelf"
  desc "Clipboard manager with searchable history and collections"
  homepage "https://github.com/zxdposter/ClipShelf"

  depends_on macos: :sonoma

  app "ClipShelf.app"
  binary "#{appdir}/ClipShelf.app/Contents/MacOS/fcp", target: "fcp"
  binary "#{appdir}/ClipShelf.app/Contents/MacOS/cpx", target: "cpx"
end
