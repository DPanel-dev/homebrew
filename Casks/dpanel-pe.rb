cask "dpanel-pe" do
  arch arm: "arm64", intel: "amd64"

  version "1.11.1,1791558305"
  sha256 arm:   "91efe8e968a7290b13618c620effa5d9eb73ddce8738e4f1b1c0e23ce7bd284d",
         intel: "d62d25044be9f1e28c050fff84d54fa1072849326dcd4cdd5db56c7583e74095"

  url "https://github.com/donknap/dpanel/releases/download/v#{version.before_comma}/dpanel-desktop-pe-darwin-#{arch}.app.zip"
  name "DPanelDesktop PE"
  desc "Desktop app for managing Docker and Podman containers"
  homepage "https://dpanel.cc/"

  conflicts_with cask: "dpanel"
  depends_on :macos

  app "dpanel-desktop.app"

  zap trash: "~/.dpanel"
end
