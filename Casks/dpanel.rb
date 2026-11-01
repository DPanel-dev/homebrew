cask "dpanel" do
  arch arm: "arm64", intel: "amd64"

  version "1.11.2,202611010922"
  sha256 arm:   "0d876e45c38b2d847ce6a8dcc825bfacfaf80b87b6703cb2aff9564170e064a6",
         intel: "95fa55d542ba802907656674bae35b99a192b805fcca4c9497d011af07c5fa0a"

  url "https://github.com/donknap/dpanel/releases/download/v#{version.before_comma}/dpanel-desktop-ce-darwin-#{arch}.app.zip"
  name "DPanelDesktop"
  desc "Desktop app for managing Docker and Podman containers"
  homepage "https://dpanel.cc/"

  conflicts_with cask: "dpanel-pe"
  depends_on :macos

  app "dpanel-desktop.app"

  zap trash: "~/.dpanel"
end
