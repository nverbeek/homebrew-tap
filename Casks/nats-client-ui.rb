cask "nats-client-ui" do
  version "1.0.18"
  sha256 "b6917de343f4ec496e69ad8754ad38c9acb7bb63f457d7a2d4c9967df7cff95e"

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
