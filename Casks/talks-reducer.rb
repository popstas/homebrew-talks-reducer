cask "talks-reducer" do
  version "1.0.2"
  sha256 "995f307cb49d77896656dd8c9f0633daf1ff0d9a757fe4d37ce1b65141e5770d"

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
