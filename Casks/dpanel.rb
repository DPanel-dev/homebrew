cask "dpanel" do
  arch arm: "arm64", intel: "amd64"

  version "1.11.2,202610271125"
  sha256 arm:   "fce9019f89331b424d74871efa3cef0898d0017cd996b768deb302e6127c9e66",
         intel: "121424408f5ab47c2e38f59f82097a0f5bdefed50f81c02b6f933deed5a606ee"

  url "https://github.com/donknap/dpanel/releases/download/v#{version.before_comma}/dpanel-desktop-ce-darwin-#{arch}.app.zip"
  name "DPanelDesktop"
  desc "Desktop app for managing Docker and Podman containers"
  homepage "https://dpanel.cc/"

  conflicts_with cask: "dpanel-pe"
  depends_on :macos

  app "dpanel-desktop.app"

  zap trash: "~/.dpanel"
end
