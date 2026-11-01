cask "dpanel-pe" do
  arch arm: "arm64", intel: "amd64"

  version "1.11.2,202611010922"
  sha256 arm:   "1069e959a9ee20bf5f8e4149e2ab8ade11b8eb7cf5c44af20a474db1622c7a1a",
         intel: "9114b75e3fe962865f5dfda96bfcd73003240bed9aec3583db1ddd82bed7650c"

  url "https://github.com/donknap/dpanel/releases/download/v#{version.before_comma}/dpanel-desktop-pe-darwin-#{arch}.app.zip"
  name "DPanelDesktop PE"
  desc "Desktop app for managing Docker and Podman containers"
  homepage "https://dpanel.cc/"

  conflicts_with cask: "dpanel"
  depends_on :macos

  app "dpanel-desktop.app"

  zap trash: "~/.dpanel"
end
