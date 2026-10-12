cask "dpanel-pe" do
  arch arm: "arm64", intel: "amd64"

  version "1.11.1,202610121500"
  sha256 arm:   "5306916efe52cc5e99f9e3505c53d82325d230a0b36682431867dc7875119e70",
         intel: "35f796f4253ca7cc5c6156c85020abe65d0bfadfbba57abc7951bda7f551da26"

  url "https://github.com/donknap/dpanel/releases/download/v#{version.before_comma}/dpanel-desktop-pe-darwin-#{arch}.app.zip"
  name "DPanelDesktop PE"
  desc "Desktop app for managing Docker and Podman containers"
  homepage "https://dpanel.cc/"

  conflicts_with cask: "dpanel"
  depends_on :macos

  app "dpanel-desktop.app"

  zap trash: "~/.dpanel"
end
