cask "dpanel-pe" do
  arch arm: "arm64", intel: "amd64"

  version "1.11.1"
  sha256 arm:   "7421910452004bb968f11bdc208766eb9db02fd3fc341f80a18d78e7d85c183f",
         intel: "0e3da92aaef4f4aee85579876c1d9e41bfbd2e6beda0be8ce0856ae2c25ec872"

  url "https://github.com/donknap/dpanel/releases/download/v#{version}/dpanel-desktop-pe-darwin-#{arch}.app.zip"
  name "DPanelDesktop PE"
  desc "Desktop app for managing Docker and Podman containers"
  homepage "https://dpanel.cc/"

  conflicts_with cask: "dpanel"
  depends_on :macos

  app "dpanel-desktop.app"

  zap trash: "~/.dpanel"
end
