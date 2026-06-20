class Uuid < Formula
  desc "CLI tool for generating UUIDs, CUIDs, NanoIDs, ULIDs, XIDs, and MongoDB ObjectIDs"
  homepage "https://github.com/ericfialkowski/uuid-cl"
  version "1.0.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ericfialkowski/uuid-cl/releases/download/v1.0.5/uuid-darwin-arm64.tar.gz"
      sha256 "1d93b6ff222e61dda984717898c2fedbe43e5400dfd24ba518594e7b53de1a37"
    else
      url "https://github.com/ericfialkowski/uuid-cl/releases/download/v1.0.5/uuid-darwin-amd64.tar.gz"
      sha256 "8f684908cfeefbe89b8d2acb995fd2ed8a31a2caf8353ee52b670f240a5ec072"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ericfialkowski/uuid-cl/releases/download/v1.0.5/uuid-linux-arm64.tar.gz"
      sha256 "12e004917933c7e10fce6836308d298eb73e64a6146bc777b907457d7e8c71c7"
    else
      url "https://github.com/ericfialkowski/uuid-cl/releases/download/v1.0.5/uuid-linux-amd64.tar.gz"
      sha256 "58c3ea67a4507f52b7f64b231ebef96ab0cfc546fb533d1aae38c17345b9abbd"
    end
  end

  def install
    bin.install "uuid"
  end

  test do
    assert_match(/[0-9a-f-]{36}/, shell_output("#{bin}/uuid"))
  end
end
