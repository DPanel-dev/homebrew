cask "dpanel-pe" do
  arch arm: "arm64", intel: "amd64"

  version "1.11.1"
  sha256 arm:   "fa518927bfc6164f5578e485294fdeb93c9c26b18498c6d27c80bd60eff8885e",
         intel: "81c0e5ccd6ada4323aba8f2a302bf69676732a5a0de5d6b1effd483b9098e0e2"

  url "https://github.com/donknap/dpanel/releases/download/v#{version}/dpanel-desktop-pe-darwin-#{arch}.app.zip"
  name "DPanelDesktop PE"
  desc "Desktop app for managing Docker and Podman containers"
  homepage "https://dpanel.cc/"

  conflicts_with cask: "dpanel"
  depends_on :macos

  app "dpanel-desktop.app"

  zap trash: "~/.dpanel"
end
