cask "tidy" do
  version "1.1.0"
  sha256 "db0f7e076e35b1e28126abb2bdd94786625c746fa91cf2e8af67b3bbcb25e278"

  url "https://github.com/RyanStoffel/tidy/releases/download/v#{version}/Tidy.zip"
  name "Tidy"
  desc "Menu bar app that files your Desktop and Downloads by rule"
  homepage "https://github.com/RyanStoffel/tidy"

  depends_on macos: :ventura

  app "Tidy.app"

  zap trash: [
    "~/Library/Application Support/Tidy",
    "~/Library/Preferences/com.ryanstoffel.tidy.plist",
  ]
end
