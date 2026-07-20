cask "agentbar" do
  version "2.2.20"
  sha256 "77087ce4af7e2f12ac5bbcf59a0d07ee84374200411e890f34882001dbe0bcbb"

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
