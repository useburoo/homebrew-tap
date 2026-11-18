class Pulsesend < Formula
  desc "Send transactional email with PulseSend from your terminal"
  homepage "https://docs.send.noburi.space/cli"
  version "0.7.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/usenoburi/pulsesend-cli/releases/download/v0.7.1/pulsesend-0.7.1-aarch64-apple-darwin.tar.gz"
      sha256 "52416de2699fc63ee153cefbdbf55960f9c789a40e2cbe0ca091ef67f3de3db0"
    end
    on_intel do
      url "https://github.com/usenoburi/pulsesend-cli/releases/download/v0.7.1/pulsesend-0.7.1-x86_64-apple-darwin.tar.gz"
      sha256 "835e4b5a0518424dbf378a7fc94090f6b59b3778841ce9097337e2890488c2d1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/usenoburi/pulsesend-cli/releases/download/v0.7.1/pulsesend-0.7.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1db63d7ffc5c4975c56092746265f2374cc9a454db5f0998b69e9abbfe97b8d4"
    end
    on_intel do
      url "https://github.com/usenoburi/pulsesend-cli/releases/download/v0.7.1/pulsesend-0.7.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8bb9314bcf9dc19285adc1dbf63a285b3593230d9b1899679ae045cb13e39f18"
    end
  end

  def install
    bin.install "pulsesend"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pulsesend --version")
  end
end
