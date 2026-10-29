cask "dpanel" do
  arch arm: "arm64", intel: "amd64"

  version "1.11.2,202610292121"
  sha256 arm:   "b020bb56d83cc31b38a71d90e68aa6d47c3f6ff507a351ca1016b4f88562f1ec",
         intel: "20f9fdce6e7e227080193ddb8f8b0859b557067e4e5069a7e9b04fdcf5eb07ac"

  url "https://github.com/donknap/dpanel/releases/download/v#{version.before_comma}/dpanel-desktop-ce-darwin-#{arch}.app.zip"
  name "DPanelDesktop"
  desc "Desktop app for managing Docker and Podman containers"
  homepage "https://dpanel.cc/"

  conflicts_with cask: "dpanel-pe"
  depends_on :macos

  app "dpanel-desktop.app"

  zap trash: "~/.dpanel"
end
