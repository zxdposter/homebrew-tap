cask "clipshelf" do
  arch arm: "arm64", intel: "x86_64"

  version "0.13.0"
  sha256 arm:   "46832dd34c4ec32d4e173f00b04f5a3860c80681b2f2e3946329799893ade5ad",
         intel: "5822a341c578c3a937646290a622d2596aa3e8a3f5ed2bf953d266ef34f47719"

  url "https://github.com/zxdposter/ClipShelf/releases/download/v#{version}/ClipShelf-#{version}-macOS-#{arch}.dmg"
  name "ClipShelf"
  desc "Clipboard manager with searchable history and collections"
  homepage "https://github.com/zxdposter/ClipShelf"

  depends_on macos: :sonoma

  app "ClipShelf.app"
  binary "#{appdir}/ClipShelf.app/Contents/MacOS/fcp", target: "fcp"
  binary "#{appdir}/ClipShelf.app/Contents/MacOS/cpx", target: "cpx"
end
