class Glide < Formula
  desc "Keep your priorities in view while you work in the terminal; onboarding agent for engineering teams"
  homepage "https://tryglide.dev"
  version "0.1.2"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/matthewvilaysack/glide/releases/download/v0.1.2/glide-0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "c2a60d0f21593452aa548e2ada0f7d6a1ded9950abc76465d6aac9581f350777"
    end
    on_intel do
      url "https://github.com/matthewvilaysack/glide/releases/download/v0.1.2/glide-0.1.2-x86_64-apple-darwin.tar.gz"
      sha256 "9af4816fa05ebaacae1429b42ebdef1b53fa1cc1b469ae6dcb9a09421e2e58d0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthewvilaysack/glide/releases/download/v0.1.2/glide-0.1.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "761ff90956ebb84b1e88513d801a2a49d9a7f01551ed7a72a2f33c425162160e"
    end
    on_intel do
      url "https://github.com/matthewvilaysack/glide/releases/download/v0.1.2/glide-0.1.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3c6762a46e8b33ea66f5dc7fc7efcbecbad8a562e4f82aa1dbd27d3514ed7efa"
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
