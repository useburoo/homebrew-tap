class Pulsesend < Formula
  desc "Send transactional email with PulseSend from your terminal"
  homepage "https://docs.pulse-send.jiordiviera.me/cli"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/useburoo/pulsesend-cli/releases/download/v0.7.0/pulsesend-0.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "8dd5a8e19275263192092c0c467e368693fae67bf452e7771b802756039d7331"
    end
    on_intel do
      url "https://github.com/useburoo/pulsesend-cli/releases/download/v0.7.0/pulsesend-0.7.0-x86_64-apple-darwin.tar.gz"
      sha256 "c2a606e7070aba9795db40b38d221f13e51bbffd318297ee2d835c7071072267"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/useburoo/pulsesend-cli/releases/download/v0.7.0/pulsesend-0.7.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c3b1a52c93cf59013bd396de6ce50504eac1bcaf46e45d3032c94558adb86cf4"
    end
    on_intel do
      url "https://github.com/useburoo/pulsesend-cli/releases/download/v0.7.0/pulsesend-0.7.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a98a14c5c48060c181390c39f0ad92cb54cab33bd363252916990c9c7953ddd5"
    end
  end

  def install
    bin.install "pulsesend"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pulsesend --version")
  end
end
