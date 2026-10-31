cask "clipshelf" do
  arch arm: "arm64", intel: "x86_64"

  version "0.13.1"
  sha256 arm:   "9d79e777668e8cf85fc2591441349ed6ceb850d28525278c1acb3f8b57a5236a",
         intel: "3315b488f5128daa222844b6c43b33d395ea76a0e9acbb0c43d3b8684353db82"

  url "https://github.com/zxdposter/ClipShelf/releases/download/v#{version}/ClipShelf-#{version}-macOS-#{arch}.dmg"
  name "ClipShelf"
  desc "Clipboard manager with searchable history and collections"
  homepage "https://github.com/zxdposter/ClipShelf"

  depends_on macos: :sonoma

  app "ClipShelf.app"
  binary "#{appdir}/ClipShelf.app/Contents/MacOS/fcp", target: "fcp"
  binary "#{appdir}/ClipShelf.app/Contents/MacOS/cpx", target: "cpx"
end
