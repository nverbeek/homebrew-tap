cask "nats-client-ui" do
  version "1.0.19"
  sha256 "344cad4182d338bb8204a20c647009e4fbbf9b6c9536942cf52dd6aabe838e60"

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
