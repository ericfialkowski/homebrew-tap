class Uuid < Formula
  desc "CLI tool for generating UUIDs, CUIDs, NanoIDs, ULIDs, XIDs, and MongoDB ObjectIDs"
  homepage "https://github.com/ericfialkowski/uuid-cl"
  version "1.0.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ericfialkowski/uuid-cl/releases/download/v1.0.5/uuid-darwin-arm64.tar.gz"
      sha256 "060c91ad7e978216bf39f90aaee8392046d08ff7308c9ba4c986eb8faa3c7b8b"
    else
      url "https://github.com/ericfialkowski/uuid-cl/releases/download/v1.0.5/uuid-darwin-amd64.tar.gz"
      sha256 "bb89ed3ec78a094f00e6d67239077dd003b17da4f7fb970f52d0c93f26daa1b2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ericfialkowski/uuid-cl/releases/download/v1.0.5/uuid-linux-arm64.tar.gz"
      sha256 "e1d920979ee11358ffcd6caf521897b51355b5006bb14393404a0f6b125abbbb"
    else
      url "https://github.com/ericfialkowski/uuid-cl/releases/download/v1.0.5/uuid-linux-amd64.tar.gz"
      sha256 "214a3394c5c19424cf82cff2982576dbec14d57d3f9bff45970a89be7a1e8a4b"
    end
  end

  def install
    bin.install "uuid"
  end

  test do
    assert_match(/[0-9a-f-]{36}/, shell_output("#{bin}/uuid"))
  end
end
