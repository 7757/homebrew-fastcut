cask "fastcut" do
  version "1.0.2"
  sha256 "b18414edcb50cf1fe021cd3233516b0fa51d872628f169fd5673e4e40b932d19"

  url "https://github.com/7757/FastCut/releases/download/v#{version}/FastCut-#{version}-macOS.zip"
  name "FastCut"
  desc "Lightweight clipboard-history manager for macOS"
  homepage "https://github.com/7757/FastCut"

  app "FastCut.app"

  caveats <<~EOS
    FastCut is self-signed (not notarized). If macOS blocks the first launch,
    right-click FastCut in /Applications and choose Open, or install with:
      brew install --cask --no-quarantine 7757/fastcut/fastcut
  EOS

  zap trash: [
    "~/Library/Application Support/FastCut",
    "~/Library/Preferences/com.fastcut.clipboard.plist",
  ]
end
