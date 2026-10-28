cask "dpanel" do
  arch arm: "arm64", intel: "amd64"

  version "1.11.2,202610282025"
  sha256 arm:   "f5761c990535f35944c86dbce91f96b450d926c25ffe5359b32a017e3955bb6d",
         intel: "5c6cd94972564cf4bc31634e55940041beeca60e1dcbf37bb5992439531cded2"

  url "https://github.com/donknap/dpanel/releases/download/v#{version.before_comma}/dpanel-desktop-ce-darwin-#{arch}.app.zip"
  name "DPanelDesktop"
  desc "Desktop app for managing Docker and Podman containers"
  homepage "https://dpanel.cc/"

  conflicts_with cask: "dpanel-pe"
  depends_on :macos

  app "dpanel-desktop.app"

  zap trash: "~/.dpanel"
end
