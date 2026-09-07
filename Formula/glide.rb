class Glide < Formula
  desc "Keep your priorities in view while you work in the terminal; onboarding agent for engineering teams"
  homepage "https://tryglide.dev"
  version "0.1.3"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/matthewvilaysack/glide/releases/download/v0.1.3/glide-0.1.3-aarch64-apple-darwin.tar.gz"
      sha256 "eb5b16831721e9d834193dfed2840dbf7bf8cba5a45d20d9732327b5c77f7ef5"
    end
    on_intel do
      url "https://github.com/matthewvilaysack/glide/releases/download/v0.1.3/glide-0.1.3-x86_64-apple-darwin.tar.gz"
      sha256 "5a1faa3a2c0ff8b987154e7bfe8068e408ec86080cc1cd61f089f3b8ff967802"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthewvilaysack/glide/releases/download/v0.1.3/glide-0.1.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "320349b01ad9bfb03d6b1125b6ac8897e616f7d9d6a6bc19a96eb8feb1b290aa"
    end
    on_intel do
      url "https://github.com/matthewvilaysack/glide/releases/download/v0.1.3/glide-0.1.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e9db165c03f4c09b21cd6556b6d307d134764efd8aec46cb98d6eda3ed5f9393"
    end
  end

  def install
    bin.install "glide"
    generate_completions_from_executable(bin/"glide", "completion")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/glide --version")
  end
end
