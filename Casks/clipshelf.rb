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

  postflight_steps do
    run "/bin/bash", args: ["-c", <<~'SHELL', "clipshelf-local-signing", "{{appdir}}/ClipShelf.app"], print_stdout: true
      set -euo pipefail
      identity=$(/usr/bin/security find-identity -v -p codesigning | /usr/bin/awk '/"ClipShelf Release Signing"$/ { print $2; exit }')
      if [[ -z "$identity" ]]; then
        exit 0
      fi
      [[ "$identity" =~ ^[0-9A-F]{40}$ ]]
      requirement="identifier \"local.clipshelf.app\" and certificate leaf = H\"${identity}\""
      echo "Re-signing ClipShelf with local identity ${identity}"
      /usr/bin/codesign --force --sign "$identity" --timestamp=none --requirements "=designated => ${requirement}" "$1"
      /usr/bin/codesign --verify --deep --strict --test-requirement "=${requirement}" "$1"
    SHELL
  end
end
