class DpanelPe < Formula
  desc "PE container management server for Docker and Podman"
  homepage "https://dpanel.cc/"
  url "https://github.com/donknap/dpanel/releases/download/v1.11.1/dpanel-pe-darwin-#{on_arch_conditional(arm: "arm64", intel: "amd64")}"
  version "1.11.1"
  sha256 on_arch_conditional(
    arm:   "91720d807327a5054d84ab3a5a97986dab9a50b9244b318e349007a0c2626f1b",
    intel: "5c7647e1effb33316ab4fdd4e203ef58f4efd9bbab2f563e157bd3661c8d2bdc",
  )

  depends_on :macos

  conflicts_with "dpanel", because: "both install the dpanel command"

  def install
    artifact = Dir["dpanel-pe-darwin-*"].fetch(0)
    bin.install artifact => "dpanel"
    chmod 0755, bin/"dpanel"
  end

  service do
    run [opt_bin/"dpanel", "server:start"]
    environment_variables STORAGE_LOCAL_PATH: var/"dpanel"
    working_dir var/"dpanel"
    keep_alive true
  end
end
