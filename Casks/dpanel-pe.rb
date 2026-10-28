cask "dpanel-pe" do
  arch arm: "arm64", intel: "amd64"

  version "1.11.2,202610271125"
  sha256 arm:   "2b699bbeeec7be2b7e4b037c2dc08678c57e44126094bf342ab81bb5161eba98",
         intel: "797bb3a9addc6f193d7b9057136539b0ab1f0dd96db482f0cada169bc54dfb4d"

  url "https://github.com/donknap/dpanel/releases/download/v#{version.before_comma}/dpanel-desktop-pe-darwin-#{arch}.app.zip"
  name "DPanelDesktop PE"
  desc "Desktop app for managing Docker and Podman containers"
  homepage "https://dpanel.cc/"

  conflicts_with cask: "dpanel"
  depends_on :macos

  app "dpanel-desktop.app"

  zap trash: "~/.dpanel"
end
