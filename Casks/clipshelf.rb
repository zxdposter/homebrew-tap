cask "clipshelf" do
  version "0.10.2"
  sha256 "8158a9413e2e7b1fcefeeebdf143e4aafc9fe043956639d885fc643df0eba13f"

  url "https://github.com/zxdposter/ClipShelf/releases/download/v#{version}/ClipShelf-#{version}-macOS-arm64.dmg"
  name "ClipShelf"
  desc "Clipboard manager with searchable history and collections"
  homepage "https://github.com/zxdposter/ClipShelf"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "ClipShelf.app"
end
