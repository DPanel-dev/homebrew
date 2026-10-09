cask "dpanel" do
  arch arm: "arm64", intel: "amd64"

  version "1.11.1,1791558305"
  sha256 arm:   "ebbb062c03060915d198aafbbe88bf23e2c2e48e3feb6737d1f3d91d8b282b8f",
         intel: "22cbff2d6dfd9f7a0a1bf21096c55dee1b25dbad8746adeeec076bc83b24f3e5"

  url "https://github.com/donknap/dpanel/releases/download/v#{version.before_comma}/dpanel-desktop-ce-darwin-#{arch}.app.zip"
  name "DPanelDesktop"
  desc "Desktop app for managing Docker and Podman containers"
  homepage "https://dpanel.cc/"

  conflicts_with cask: "dpanel-pe"
  depends_on :macos

  app "dpanel-desktop.app"

  zap trash: "~/.dpanel"
end
