cask "dpanel" do
  arch arm: "arm64", intel: "amd64"

  version "1.11.1,202610092351"
  sha256 arm:   "08edd82734ff5d1e22cc47766185b3a5d7a3e1a052e7fb14581b3f106cdc7f0f",
         intel: "e2933fc0f896cd1c3aa31661af27bbf9c460771566f44beba140d581855235d1"

  url "https://github.com/donknap/dpanel/releases/download/v#{version.before_comma}/dpanel-desktop-ce-darwin-#{arch}.app.zip"
  name "DPanelDesktop"
  desc "Desktop app for managing Docker and Podman containers"
  homepage "https://dpanel.cc/"

  conflicts_with cask: "dpanel-pe"
  depends_on :macos

  app "dpanel-desktop.app"

  zap trash: "~/.dpanel"
end
