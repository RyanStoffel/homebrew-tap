cask "caffeine" do
  version "1.1.0"
  sha256 "326a3f820753c20c74b5725cbd92e66f61bead6dfeaf64ea7a0a86b91678399c"

  url "https://github.com/RyanStoffel/caffeine/releases/download/v#{version}/Caffeine.zip"
  name "Caffeine"
  desc "Tiny menu bar app to keep display awake"
  homepage "https://github.com/RyanStoffel/caffeine"

  depends_on macos: :ventura

  app "Caffeine.app"

  zap trash: "~/Library/Preferences/com.ryanstoffel.caffeine.plist"
end
