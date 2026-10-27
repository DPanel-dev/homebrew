cask "dpanel-pe" do
  arch arm: "arm64", intel: "amd64"

  version "1.11.1,202610271125"
  sha256 arm:   "c5af587489b60e34d621fdbb677b84e19f10a6d0dd136fb9f31acb858eef94e5",
         intel: "80e39b8c6f244f33782816fd1ca8830649426fcb0e1e125fbcf1f8074f49b61c"

  url "https://github.com/donknap/dpanel/releases/download/v#{version.before_comma}/dpanel-desktop-pe-darwin-#{arch}.app.zip"
  name "DPanelDesktop PE"
  desc "Desktop app for managing Docker and Podman containers"
  homepage "https://dpanel.cc/"

  conflicts_with cask: "dpanel"
  depends_on :macos

  app "dpanel-desktop.app"

  zap trash: "~/.dpanel"
end
