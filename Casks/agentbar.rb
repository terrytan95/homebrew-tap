cask "agentbar" do
  version "2.2.6"
  sha256 "fb76112c337edd6a073cc388307d4203b9b0e929dc1cbfa0a290c8f6666b87e2"

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
