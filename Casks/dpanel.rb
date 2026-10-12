cask "dpanel" do
  arch arm: "arm64", intel: "amd64"

  version "1.11.1,202610121702"
  sha256 arm:   "95dac994c9973977739a0d1e67c8fb5e8d3c7514a9911ed9c8264e68760f7191",
         intel: "3b1033c6d0091eff9b1490f1b83f4162d2296612f30c00c4c96c766d7e8e0c91"

  url "https://github.com/donknap/dpanel/releases/download/v#{version.before_comma}/dpanel-desktop-ce-darwin-#{arch}.app.zip"
  name "DPanelDesktop"
  desc "Desktop app for managing Docker and Podman containers"
  homepage "https://dpanel.cc/"

  conflicts_with cask: "dpanel-pe"
  depends_on :macos

  app "dpanel-desktop.app"

  zap trash: "~/.dpanel"
end
