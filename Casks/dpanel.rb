cask "dpanel" do
  arch arm: "arm64", intel: "amd64"

  version "1.11.2,202611011130"
  sha256 arm:   "d321a1a499689e91526d668c5a0f08d9e0f997699d669940114a9f6ce7ae2319",
         intel: "1a66050b5f034c6aa6373be0eeee7663b02d78042e5c347e62937bf348584f37"

  url "https://github.com/donknap/dpanel/releases/download/v#{version.before_comma}/dpanel-desktop-ce-darwin-#{arch}.app.zip"
  name "DPanelDesktop"
  desc "Desktop app for managing Docker and Podman containers"
  homepage "https://dpanel.cc/"

  conflicts_with cask: "dpanel-pe"
  depends_on :macos

  app "dpanel-desktop.app"

  zap trash: "~/.dpanel"
end
