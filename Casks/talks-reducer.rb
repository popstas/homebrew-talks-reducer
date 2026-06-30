cask "talks-reducer" do
  version "0.19.1"
  sha256 "03a527020ab6a034825ef4f5ce085b46aa9b0159918ac63b5522bd149dc55084"

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
