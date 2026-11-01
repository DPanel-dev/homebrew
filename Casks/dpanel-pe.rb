cask "dpanel-pe" do
  arch arm: "arm64", intel: "amd64"

  version "1.11.2,202611011130"
  sha256 arm:   "1e90faef27ec1bba3207fb6f401747638f026ae184b71fcf6323a10f41bc1790",
         intel: "a316a5cf30837d7b89b89533c7c6bb14fc9b5fae7f1c706afc69e4d32993f293"

  url "https://github.com/donknap/dpanel/releases/download/v#{version.before_comma}/dpanel-desktop-pe-darwin-#{arch}.app.zip"
  name "DPanelDesktop PE"
  desc "Desktop app for managing Docker and Podman containers"
  homepage "https://dpanel.cc/"

  conflicts_with cask: "dpanel"
  depends_on :macos

  app "dpanel-desktop.app"

  zap trash: "~/.dpanel"
end
