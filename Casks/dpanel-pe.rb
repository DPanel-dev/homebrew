cask "dpanel-pe" do
  arch arm: "arm64", intel: "amd64"

  version "1.11.2,202610292121"
  sha256 arm:   "a47de7b8e08355ea4bcd1c0a71c5203cf89ddf730b659258c767e3cb67717334",
         intel: "bb3c54c8c568fdf241f84a2713a63d736a8f0e297c044bb1e5792b0b46ce61d4"

  url "https://github.com/donknap/dpanel/releases/download/v#{version.before_comma}/dpanel-desktop-pe-darwin-#{arch}.app.zip"
  name "DPanelDesktop PE"
  desc "Desktop app for managing Docker and Podman containers"
  homepage "https://dpanel.cc/"

  conflicts_with cask: "dpanel"
  depends_on :macos

  app "dpanel-desktop.app"

  zap trash: "~/.dpanel"
end
