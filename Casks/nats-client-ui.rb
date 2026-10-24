cask "nats-client-ui" do
  version "1.0.20"
  sha256 "3a76a74349ae45fae31763a785f6456b065ae9e81eb4301a89c4b626ea870c0c"

  url "https://github.com/nverbeek/nats_client_flutter/releases/download/v#{version}/NATSClientUI-v#{version}-macos.dmg"
  name "NATS Client UI"
  desc "Desktop client for monitoring, subscribing and publishing NATS messages"
  homepage "https://github.com/nverbeek/nats_client_flutter"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "NATS Client.app"

  zap trash: "~/Library/Containers/com.nverbeek.natsClientFlutter"
end
