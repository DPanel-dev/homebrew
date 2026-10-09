cask "dpanel" do
  arch arm: "arm64", intel: "amd64"

  version "1.11.1,2"
  sha256 arm:   "798596951bd092df01c15b24755099c185047111db0e124557ba834de860fd17",
         intel: "2ab811a0f06b51a59a16d87fddc5c5cb519604dd31de59ff018351d0eb9d5644"

  url "https://github.com/donknap/dpanel/releases/download/v#{version.before_comma}/dpanel-desktop-ce-darwin-#{arch}.app.zip"
  name "DPanelDesktop"
  desc "Desktop app for managing Docker and Podman containers"
  homepage "https://dpanel.cc/"

  conflicts_with cask: "dpanel-pe"
  depends_on :macos

  app "dpanel-desktop.app"

  zap trash: "~/.dpanel"
end
