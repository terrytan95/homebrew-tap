# frozen_string_literal: true

cask "skillledger" do
  version "0.1.4"
  sha256 "2d62e1d8055a92e9ff8f41267db396257c51a1cb24e03c28184f031bfc09b422"

  url "https://github.com/terrytan95/skillledger/releases/download/v#{version}/SkillLedger-#{version}-arm64.dmg",
      verified: "github.com/terrytan95/skillledger/"
  name "SkillLedger"
  desc "Local-first control plane for global Agent Skills"
  homepage "https://github.com/terrytan95/skillledger"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :monterey

  app "SkillLedger.app"

  uninstall quit: "com.terrytan.skillledger"

  zap trash: [
    "~/Library/Application Support/skillledger",
    "~/Library/Caches/com.terrytan.skillledger",
    "~/Library/Caches/skillledger",
    "~/Library/HTTPStorages/com.terrytan.skillledger",
    "~/Library/Logs/skillledger",
    "~/Library/Preferences/com.terrytan.skillledger.plist",
    "~/Library/Saved Application State/com.terrytan.skillledger.savedState",
  ]

  caveats <<~EOS
    SkillLedger is locally signed but not notarized. If macOS blocks the first launch,
    open System Settings > Privacy & Security and click "Open Anyway" for SkillLedger.
  EOS
end
