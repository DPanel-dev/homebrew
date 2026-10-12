cask "dpanel" do
  arch arm: "arm64", intel: "amd64"

  version "1.11.1,202610121500"
  sha256 arm:   "9fbb70145151932343611eb137257e0bee16187661c3e28675ddc6e07b502e97",
         intel: "0afc976ac8ebdd44cec357db8250d84b85b46248371ac5235c4c1c614a74f8e1"

  url "https://github.com/donknap/dpanel/releases/download/v#{version.before_comma}/dpanel-desktop-ce-darwin-#{arch}.app.zip"
  name "DPanelDesktop"
  desc "Desktop app for managing Docker and Podman containers"
  homepage "https://dpanel.cc/"

  conflicts_with cask: "dpanel-pe"
  depends_on :macos

  app "dpanel-desktop.app"

  zap trash: "~/.dpanel"
end
