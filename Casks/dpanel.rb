cask "dpanel" do
  arch arm: "arm64", intel: "amd64"

  version "1.11.1"
  sha256 arm:   "22ceb1d09cf89d23d81bfc6424c27997ef0bd9cb2bbdf95a551ea9f65445580e",
         intel: "4e252c6f6382da109eac54190cc58453df14266b90535a9fdbaf2a1eb21e38bc"

  url "https://github.com/donknap/dpanel/releases/download/v#{version}/dpanel-desktop-ce-darwin-#{arch}.app.zip"
  name "DPanelDesktop"
  desc "Desktop app for managing Docker and Podman containers"
  homepage "https://dpanel.cc/"

  conflicts_with cask: "dpanel-pe"
  depends_on :macos

  app "dpanel-desktop.app"

  zap trash: "~/.dpanel"
end
