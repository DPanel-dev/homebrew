cask "dpanel-pe" do
  arch arm: "arm64", intel: "amd64"

  version "1.11.1,2"
  sha256 arm:   "2bac573fddf8b1f5cd94977a164e2e1666a04815c14c6720f91335a994a2b270",
         intel: "43105648e5f55f7243ea79ed85f5aca171147e63a514281f305525324587c241"

  url "https://github.com/donknap/dpanel/releases/download/v#{version.before_comma}/dpanel-desktop-pe-darwin-#{arch}.app.zip"
  name "DPanelDesktop PE"
  desc "Desktop app for managing Docker and Podman containers"
  homepage "https://dpanel.cc/"

  conflicts_with cask: "dpanel"
  depends_on :macos

  app "dpanel-desktop.app"

  zap trash: "~/.dpanel"
end
