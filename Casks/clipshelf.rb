cask "clipshelf" do
  arch arm: "arm64", intel: "x86_64"

  version "0.14.0"
  sha256 arm:   "cdf9b97265f72d4a1a2f1967a66c73b9f841ddf03439579cfdaf0ddf8ca1cc5c",
         intel: "fa31dce9638ebf1a2f2bb862e651f4136f5f7cf637625b1fa71cfe7466c30535"

  url "https://github.com/zxdposter/ClipShelf/releases/download/v#{version}/ClipShelf-#{version}-macOS-#{arch}.dmg"
  name "ClipShelf"
  desc "Clipboard manager with searchable history and collections"
  homepage "https://github.com/zxdposter/ClipShelf"

  depends_on macos: :sonoma

  app "ClipShelf.app"
  binary "#{appdir}/ClipShelf.app/Contents/MacOS/fcp", target: "fcp"
  binary "#{appdir}/ClipShelf.app/Contents/MacOS/cpx", target: "cpx"

  # shortcut: use legacy postflight for keychain access until structured steps can read local signing identities.
  postflight do
    identities = system_command("/usr/bin/security", args: ["find-identity", "-v", "-p", "codesigning"]).stdout
    identity = identities[/^\s*\d+\)\s+([0-9A-F]{40}) "ClipShelf Release Signing"$/, 1]
    if identity
      requirement = %(identifier "local.clipshelf.app" and certificate leaf = H"#{identity}")
      system_command "/usr/bin/codesign",
                     args: ["--force", "--sign", identity, "--timestamp=none",
                            "--requirements", "=designated => #{requirement}", "#{appdir}/ClipShelf.app"]
      system_command "/usr/bin/codesign",
                     args: ["--verify", "--deep", "--strict", "--test-requirement", "=#{requirement}",
                            "#{appdir}/ClipShelf.app"]
    end
  end
end
