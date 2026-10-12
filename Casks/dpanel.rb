cask "dpanel" do
  arch arm: "arm64", intel: "amd64"

  version "1.11.1,202610121636"
  sha256 arm:   "74d109f268153545d96f2e576cd72f4b7aff7e7281ef2d475c5e994772a92fb3",
         intel: "0dc0ad9b23cb48fc8b31279f129b7718c8cc6c855d5d53693d33c549e48a67b7"

  url "https://github.com/donknap/dpanel/releases/download/v#{version.before_comma}/dpanel-desktop-ce-darwin-#{arch}.app.zip"
  name "DPanelDesktop"
  desc "Desktop app for managing Docker and Podman containers"
  homepage "https://dpanel.cc/"

  conflicts_with cask: "dpanel-pe"
  depends_on :macos

  app "dpanel-desktop.app"

  zap trash: "~/.dpanel"
end
