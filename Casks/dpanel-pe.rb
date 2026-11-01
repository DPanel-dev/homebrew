cask "dpanel-pe" do
  arch arm: "arm64", intel: "amd64"

  version "1.11.2,202611011115"
  sha256 arm:   "f65a18ec9958bf291074c1127ddac25bec1f1dec880593a742af44dccf530973",
         intel: "0b6b6923f38fbbf8d75acc80ad9cccbce2caf2549b098cd03c744437ea7917f5"

  url "https://github.com/donknap/dpanel/releases/download/v#{version.before_comma}/dpanel-desktop-pe-darwin-#{arch}.app.zip"
  name "DPanelDesktop PE"
  desc "Desktop app for managing Docker and Podman containers"
  homepage "https://dpanel.cc/"

  conflicts_with cask: "dpanel"
  depends_on :macos

  app "dpanel-desktop.app"

  zap trash: "~/.dpanel"
end
