cask "dpanel-pe" do
  arch arm: "arm64", intel: "amd64"

  version "1.11.1,202610121636"
  sha256 arm:   "22db91bfb2a58d7b11bc2af838a2f1358e3d4610f5d0adcce6bd3ac0d9f2cef4",
         intel: "b043a5e4682712dff322244ee323214cd3697405ca7553af8cb4b38b432e921c"

  url "https://github.com/donknap/dpanel/releases/download/v#{version.before_comma}/dpanel-desktop-pe-darwin-#{arch}.app.zip"
  name "DPanelDesktop PE"
  desc "Desktop app for managing Docker and Podman containers"
  homepage "https://dpanel.cc/"

  conflicts_with cask: "dpanel"
  depends_on :macos

  app "dpanel-desktop.app"

  zap trash: "~/.dpanel"
end
