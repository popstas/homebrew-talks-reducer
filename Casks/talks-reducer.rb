cask "talks-reducer" do
  version "0.18.0"
  sha256 "e3d79cbae7c0c57f947524dae5a3e35e9c9dfe7f2a170231a24fd237206de7fd"

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
