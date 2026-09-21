cask "clipwell" do
  version "1.1.0"
  sha256 "49a63ed414ee2fcf77a1d1b280842cf5e8418f3ebd5cc74caa7b5f24ea65a3a5"

  url "https://github.com/lioneltchami/clipwell/releases/download/v#{version}/Clipwell-#{version}-arm64.dmg"
  name "Clipwell"
  desc "Native macOS menu-bar screen recorder"
  homepage "https://lioneltchami.github.io/clipwell/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia

  app "Clipwell.app"

  zap trash: [
    "~/Library/Application Support/Clipwell",
    "~/Library/Preferences/com.lionel.Clipwell.plist",
    "~/Library/HTTPStorages/com.lionel.Clipwell",
  ]
end
