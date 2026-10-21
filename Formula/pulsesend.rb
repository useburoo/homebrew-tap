class Pulsesend < Formula
  desc "Send transactional email with PulseSend from your terminal"
  homepage "https://docs.pulse-send.jiordiviera.me/cli"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jiordiviera/pulsesend-cli/releases/download/v0.2.2/pulsesend-0.2.2-aarch64-apple-darwin.tar.gz"
      sha256 "84c8f9c7171bd7f978390220da4042b07c1a9669af652537530500f1e469c5db"
    end
    on_intel do
      url "https://github.com/jiordiviera/pulsesend-cli/releases/download/v0.2.2/pulsesend-0.2.2-x86_64-apple-darwin.tar.gz"
      sha256 "2c38629720fa59bb0e977bb62812b35c5d2ce9fc77faf4132cae489028556d69"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jiordiviera/pulsesend-cli/releases/download/v0.2.2/pulsesend-0.2.2-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a93955b95f2d29aa3ca1d39880ae7a2701f7784d3b03f649e48be7d7df166b76"
    end
    on_intel do
      url "https://github.com/jiordiviera/pulsesend-cli/releases/download/v0.2.2/pulsesend-0.2.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "409b8f68cd05f41086711bb4065c7feb57a28ab32cc743698e02ce44b4122892"
    end
  end

  def install
    bin.install "pulsesend"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pulsesend --version")
  end
end
