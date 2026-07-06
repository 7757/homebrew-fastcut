cask "fastcut" do
  version "1.0.0"
  sha256 "65485dddc767d69fd3897889a7666e28a1f339ed4ea0f9982f9504053589d3c7"

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
