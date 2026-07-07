cask "agentbar" do
  version "2.2.2"
  sha256 "ce86a7309bddb0001dc3172dbd205148a3f882230670985e31a7a72b602a85b3"

  url "https://github.com/terrytan95/AgentBar/releases/download/v#{version}/AgentBar-v#{version}.zip",
      verified: "github.com/terrytan95/AgentBar/"
  name "AgentBar"
  desc "Menu bar monitor for Codex and Claude Code usage"
  homepage "https://github.com/terrytan95/AgentBar"

  auto_updates true
  depends_on macos: :sonoma

  app "AgentBar.app"

  uninstall quit: "com.terrytan.AgentBar"

  zap trash: [
    "~/Library/Application Support/AgentBar",
    "~/Library/Caches/com.terrytan.AgentBar",
    "~/Library/HTTPStorages/com.terrytan.AgentBar",
    "~/Library/HTTPStorages/com.terrytan.AgentBar.binarycookies",
    "~/Library/Preferences/com.terrytan.AgentBar.plist",
    "~/Library/Saved Application State/com.terrytan.AgentBar.savedState",
  ]
end
