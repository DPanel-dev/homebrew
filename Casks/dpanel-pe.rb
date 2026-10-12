cask "dpanel-pe" do
  arch arm: "arm64", intel: "amd64"

  version "1.11.1,202610121702"
  sha256 arm:   "4ee17ec1e1d311336030308e89e6729292d7b54b08d4a0de58c8c06bf9ff8df2",
         intel: "a3e88a221ab588cc84662cd79f8b5a6bf3e70152bbb1dd843f9a696d9ef15875"

  url "https://github.com/donknap/dpanel/releases/download/v#{version.before_comma}/dpanel-desktop-pe-darwin-#{arch}.app.zip"
  name "DPanelDesktop PE"
  desc "Desktop app for managing Docker and Podman containers"
  homepage "https://dpanel.cc/"

  conflicts_with cask: "dpanel"
  depends_on :macos

  app "dpanel-desktop.app"

  zap trash: "~/.dpanel"
end
