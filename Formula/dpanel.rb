class Dpanel < Formula
  desc "Container management server for Docker and Podman"
  homepage "https://dpanel.cc/"
  url "https://github.com/donknap/dpanel/releases/download/v1.11.1/dpanel-ce-darwin-#{on_arch_conditional(arm: "arm64", intel: "amd64")}"
  version "1.11.1"
  sha256 on_arch_conditional(
    arm:   "7e7cb62e233f9b51875f9e727bad6284016d966a1ba025ae446547cab5121fe8",
    intel: "53a5565cb8f0afe289e4ba7e4ef2fddcf0255809f31688a0cf5146756df1237d",
  )

  depends_on :macos

  conflicts_with "dpanel-pe", because: "both install the dpanel command"

  def install
    artifact = Dir["dpanel-ce-darwin-*"].fetch(0)
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
