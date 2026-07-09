cask "talks-reducer" do
  version "1.0.0"
  sha256 "463a06ffe8ffa7f6c5dea9812aa0a0125d76dd84ad3f0bb8ccbddd0ee93631c0"

  url "https://github.com/popstas/talks-reducer/releases/download/v#{version}/talks-reducer-macos.app-#{version}.zip"
  name "Talks Reducer"
  desc "Remove silent parts from video recordings"
  homepage "https://github.com/popstas/talks-reducer"

  app "talks-reducer.app"

  caveats <<~EOS
    #{token} is not signed with an Apple Developer ID.
    macOS may show a warning on first launch.
    To allow it, go to System Settings > Privacy & Security and click "Open Anyway".
  EOS

  zap trash: [
    "~/Library/Preferences/talks-reducer",
  ]
end
