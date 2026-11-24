class Glide < Formula
  desc "Keep your priorities in view while you work in the terminal; onboarding agent for engineering teams"
  homepage "https://tryglide.dev"
  version "0.7.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/matthewvilaysack/glide/releases/download/v0.7.1/glide-0.7.1-aarch64-apple-darwin.tar.gz"
      sha256 "211a5f17c7c82aa2fd102d1a2d5705f0aa5e14cc5ca7f952eacaebed713d7d2d"
    end
    on_intel do
      url "https://github.com/matthewvilaysack/glide/releases/download/v0.7.1/glide-0.7.1-x86_64-apple-darwin.tar.gz"
      sha256 "1f47f3dd96370a8ff8bc7a6bd5614f581cf23db41f8296365d2af89dd5b0dd1a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthewvilaysack/glide/releases/download/v0.7.1/glide-0.7.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d04159433beb1540e97cc9cdeee924c290eecf760c5dc62abe71bada28ed6390"
    end
    on_intel do
      url "https://github.com/matthewvilaysack/glide/releases/download/v0.7.1/glide-0.7.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "56a6fee8661713deb70d389d855b5e5b0b721a7b046981f464894b09f2711968"
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
