cask "agentbar" do
  version "2.3.7"
  sha256 "680cac6c14c87ee3448fd2769ab3126cacad1a298bdb3b17d37b773d7261ba5d"

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
