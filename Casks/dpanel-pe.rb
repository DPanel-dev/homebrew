cask "dpanel-pe" do
  arch arm: "arm64", intel: "amd64"

  version "1.11.2,202610282025"
  sha256 arm:   "52adad36796134134d9b7a79c93d93e4a392707949b2d3794755e02229690560",
         intel: "4832f1a78bb271a3973a7968fb01d31786d55ce51ad4766078c6fd4cfdc80bc3"

  url "https://github.com/donknap/dpanel/releases/download/v#{version.before_comma}/dpanel-desktop-pe-darwin-#{arch}.app.zip"
  name "DPanelDesktop PE"
  desc "Desktop app for managing Docker and Podman containers"
  homepage "https://dpanel.cc/"

  conflicts_with cask: "dpanel"
  depends_on :macos

  app "dpanel-desktop.app"

  zap trash: "~/.dpanel"
end
