class Glide < Formula
  desc "Keep your priorities in view while you work in the terminal; onboarding agent for engineering teams"
  homepage "https://tryglide.dev"
  version "0.3.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/matthewvilaysack/glide/releases/download/v0.3.0/glide-0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "6c677ac30038f4ec73d4e422049a920dbbe6d004af63b51c488affbf96443efd"
    end
    on_intel do
      url "https://github.com/matthewvilaysack/glide/releases/download/v0.3.0/glide-0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "a2d6c87937c63806e8f002e7dd3c69cc1af6dbcd3f1fc8659a6e7cb0b11b0f55"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthewvilaysack/glide/releases/download/v0.3.0/glide-0.3.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4abcc86dee86de1a2ca3614ce0b741314b717f6b7a913ce8f0153df2b5639b7e"
    end
    on_intel do
      url "https://github.com/matthewvilaysack/glide/releases/download/v0.3.0/glide-0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cb9c9827b41bc5e16961bd89b6aeaaa94cfe6f4e626ec6c69c77c0fb6d31352f"
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
