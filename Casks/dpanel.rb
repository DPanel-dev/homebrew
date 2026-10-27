cask "dpanel" do
  arch arm: "arm64", intel: "amd64"

  version "1.11.1,202610271125"
  sha256 arm:   "f3e05169deb92eb28f35d4436ff83e8176309a50adde2118850fec259ed84d2d",
         intel: "c82035dc7c9eb6a76c46402958918f0300cfaa998bd2272a1d82cae9ab11d52c"

  url "https://github.com/donknap/dpanel/releases/download/v#{version.before_comma}/dpanel-desktop-ce-darwin-#{arch}.app.zip"
  name "DPanelDesktop"
  desc "Desktop app for managing Docker and Podman containers"
  homepage "https://dpanel.cc/"

  conflicts_with cask: "dpanel-pe"
  depends_on :macos

  app "dpanel-desktop.app"

  zap trash: "~/.dpanel"
end
