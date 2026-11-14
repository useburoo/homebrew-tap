class Pulsesend < Formula
  desc "Send transactional email with PulseSend from your terminal"
  homepage "https://docs.pulse-send.jiordiviera.me/cli"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/useburoo/pulsesend-cli/releases/download/v0.5.0/pulsesend-0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "249cf9db3f5ae32a0ef2b45ede4d4bdd8bd98537063d39d4a9a3fd38f0b203d0"
    end
    on_intel do
      url "https://github.com/useburoo/pulsesend-cli/releases/download/v0.5.0/pulsesend-0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "19c87c1932188e9effe7ce9c2df60a6ec741986ca60bc770f5f28fc137842052"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/useburoo/pulsesend-cli/releases/download/v0.5.0/pulsesend-0.5.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0e59a92f760b3df28a96b9cfe02caa1b916effe7b5d5916ae27f98469af9b172"
    end
    on_intel do
      url "https://github.com/useburoo/pulsesend-cli/releases/download/v0.5.0/pulsesend-0.5.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ac5a07e22c75a87551af8726a253b91fee01680bcf122b22a090e6fe19edd400"
    end
  end

  def install
    bin.install "pulsesend"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pulsesend --version")
  end
end
