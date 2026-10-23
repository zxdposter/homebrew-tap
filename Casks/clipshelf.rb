cask "clipshelf" do
  version "0.9.5"
  sha256 "decda70db99ab2071c8e94c61d68b19123ad6c18c68527094094ac8b0d789090"

  url "https://github.com/zxdposter/ClipShelf/releases/download/v#{version}/ClipShelf-#{version}-macOS-arm64.dmg"
  name "ClipShelf"
  desc "Clipboard manager with searchable history and collections"
  homepage "https://github.com/zxdposter/ClipShelf"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "ClipShelf.app"
end
