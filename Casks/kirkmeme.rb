cask "kirkmeme" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.0"
  sha256 arm:   "29af19eb98c2a53b663621ede8b61b2085f51a2d6118b07a3afa63cc04337996",
         intel: "df001c0adda10b942526322abf7f13a7164181ec4b68718ffa1807033977be81"

  url "https://github.com/ericfialkowski/kirkmeme/releases/download/v#{version}/kirkmeme_#{version}_darwin_#{arch}.tar.gz"

  name "kirkmeme"
  desc "A CLI tool that overlays meme-style text onto the Kirk image."
  homepage "https://github.com/ericfialkowski/kirkmeme"

  binary "kirkmeme"

  postflight do
    system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{staged_path}/kirkmeme"]
  end
end
