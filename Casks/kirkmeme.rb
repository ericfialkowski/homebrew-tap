cask "kirkmeme" do
  arch arm: "arm64", intel: "amd64"

  version "0.0.1"
  sha256 arm:   "1bf333ce1c64373a1c0f701831dcf6d45230ee7132748591ff83d3af4036f7ef",
         intel: "06bf51b02af55285a25e15a4af7d5c867003268d673f5af6664b23f9019a5d15"

  url "https://github.com/ericfialkowski/kirkmeme/releases/download/v#{version}/kirkmeme_#{version}_darwin_#{arch}.tar.gz"

  name "kirkmeme"
  desc "A CLI tool that overlays meme-style text onto the Kirk image."
  homepage "https://github.com/ericfialkowski/kirkmeme"

  binary "kirkmeme"

  postflight do
    system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{staged_path}/kirkmeme"]
  end
end
