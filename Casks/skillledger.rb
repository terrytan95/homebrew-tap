# frozen_string_literal: true

cask "skillledger" do
  version "0.1.5"
  sha256 "4afb2e3e222ad63d5e77486bcf840860025a6c09d0e0a0ab87261550eaf5d8ca"

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
