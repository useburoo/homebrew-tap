class Pulsesend < Formula
  desc "Send transactional email with PulseSend from your terminal"
  homepage "https://docs.pulse-send.jiordiviera.me/cli"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/useburoo/pulsesend-cli/releases/download/v0.3.0/pulsesend-0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "d21d9118c3cae4eb90adb9c43b204264c05a5c957f0159488b8c6cde754b7471"
    end
    on_intel do
      url "https://github.com/useburoo/pulsesend-cli/releases/download/v0.3.0/pulsesend-0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "5980d94c169bf1ca24c9573bf1e71af20a9b68afddabe1e22cccb71ce4f47d78"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/useburoo/pulsesend-cli/releases/download/v0.3.0/pulsesend-0.3.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "bb8695752bbba2f724d204285b2a4c7ea622bbb9bf91aa9399b091ab0d994f32"
    end
    on_intel do
      url "https://github.com/useburoo/pulsesend-cli/releases/download/v0.3.0/pulsesend-0.3.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "aa39a339ab51359bd74d5fcccb522a6a772afa6b1addbf4fa79a8765d4e9a938"
    end
  end

  def install
    bin.install "pulsesend"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pulsesend --version")
  end
end
