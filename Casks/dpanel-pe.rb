cask "dpanel-pe" do
  arch arm: "arm64", intel: "amd64"

  version "1.11.1,202610221338"
  sha256 arm:   "3cc4f3a13a6ec3cb59afab0f16a95613ddfe14b82e613994817e615280ac699c",
         intel: "1af9dfd24e78c56a97d6cd8fb115a4e1a35de650d3a325836acb3d7ab9d33262"

  url "https://github.com/donknap/dpanel/releases/download/v#{version.before_comma}/dpanel-desktop-pe-darwin-#{arch}.app.zip"
  name "DPanelDesktop PE"
  desc "Desktop app for managing Docker and Podman containers"
  homepage "https://dpanel.cc/"

  conflicts_with cask: "dpanel"
  depends_on :macos

  app "dpanel-desktop.app"

  zap trash: "~/.dpanel"
end
