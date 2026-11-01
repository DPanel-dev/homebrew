cask "dpanel" do
  arch arm: "arm64", intel: "amd64"

  version "1.11.2,202611011115"
  sha256 arm:   "f055c2e0d74eeb08272e08fdeb0fc74fb49c9aaebe2b3fd94237a0e3c50984a5",
         intel: "b9be06461514cc947b1cf1e113a373bb8276112da35d7d2c1705e391a89ba542"

  url "https://github.com/donknap/dpanel/releases/download/v#{version.before_comma}/dpanel-desktop-ce-darwin-#{arch}.app.zip"
  name "DPanelDesktop"
  desc "Desktop app for managing Docker and Podman containers"
  homepage "https://dpanel.cc/"

  conflicts_with cask: "dpanel-pe"
  depends_on :macos

  app "dpanel-desktop.app"

  zap trash: "~/.dpanel"
end
