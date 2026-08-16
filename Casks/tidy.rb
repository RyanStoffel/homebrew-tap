cask "tidy" do
  version "1.0.0"
  sha256 "1704544347a830cf7c628ff888dc9846ef1d2b502e5c68834a033d20d385ab9a"

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
