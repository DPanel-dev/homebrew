cask "dpanel-pe" do
  arch arm: "arm64", intel: "amd64"

  version "1.11.1,202610092351"
  sha256 arm:   "41add138eef963f665c9b0d33ccefc42c1bad44b4fac5539b0aacdd8c07d34bb",
         intel: "6312348516cfce739da0679cfaa51d8b63731a812d6fbab6a05cc27f12a90f2a"

  url "https://github.com/donknap/dpanel/releases/download/v#{version.before_comma}/dpanel-desktop-pe-darwin-#{arch}.app.zip"
  name "DPanelDesktop PE"
  desc "Desktop app for managing Docker and Podman containers"
  homepage "https://dpanel.cc/"

  conflicts_with cask: "dpanel"
  depends_on :macos

  app "dpanel-desktop.app"

  zap trash: "~/.dpanel"
end
