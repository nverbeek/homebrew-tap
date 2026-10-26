cask "nats-client-ui" do
  version "1.0.21"
  sha256 "ef678dd894f1dda289d168e64c80455ac5086e2b915c4891d52759899beebe25"

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
