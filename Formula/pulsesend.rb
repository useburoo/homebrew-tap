class Pulsesend < Formula
  desc "Send transactional email with PulseSend from your terminal"
  homepage "https://docs.pulse-send.jiordiviera.me/cli"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/useburoo/pulsesend-cli/releases/download/v0.4.0/pulsesend-0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "8205bf7585d6078b0db3d1aaa98416d6312ffad3b8106be51ceef4bcc869be30"
    end
    on_intel do
      url "https://github.com/useburoo/pulsesend-cli/releases/download/v0.4.0/pulsesend-0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "8e4644643bf776e6accf0675dc9835c01d44516a528864e4fad6f3c54886d304"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/useburoo/pulsesend-cli/releases/download/v0.4.0/pulsesend-0.4.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "06a44d5acd95992d58f6c58a7eb2a22e6d0da86c9f51e400b43125e41581d614"
    end
    on_intel do
      url "https://github.com/useburoo/pulsesend-cli/releases/download/v0.4.0/pulsesend-0.4.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d2850bea035038eddeb252578311e0de0b6ec6036da0a41783da52761ba380de"
    end
  end

  def install
    bin.install "pulsesend"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pulsesend --version")
  end
end
