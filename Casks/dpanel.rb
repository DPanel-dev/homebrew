cask "dpanel" do
  arch arm: "arm64", intel: "amd64"

  version "1.11.1,202610221338"
  sha256 arm:   "a0efff082407353f5ab276d0c8c3ce3d6b342673bd726954a84f21838ab24f7d",
         intel: "86bb6b933865d9189753a6efa24be1c4f311f497af3e6dee03437d2a06bcfce8"

  url "https://github.com/donknap/dpanel/releases/download/v#{version.before_comma}/dpanel-desktop-ce-darwin-#{arch}.app.zip"
  name "DPanelDesktop"
  desc "Desktop app for managing Docker and Podman containers"
  homepage "https://dpanel.cc/"

  conflicts_with cask: "dpanel-pe"
  depends_on :macos

  app "dpanel-desktop.app"

  zap trash: "~/.dpanel"
end
