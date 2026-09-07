class Glide < Formula
  desc "Keep your priorities in view while you work in the terminal; onboarding agent for engineering teams"
  homepage "https://tryglide.dev"
  version "0.2.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/matthewvilaysack/glide/releases/download/v0.2.0/glide-0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "483f17517d36ce0bf3ab194c5c02496d13f611194bea1dde5d673811bc66d23e"
    end
    on_intel do
      url "https://github.com/matthewvilaysack/glide/releases/download/v0.2.0/glide-0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "cf112fca8ac6d2fc916b8386b51ca0683bdc115aaa8fa6855a95da381b12bc79"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthewvilaysack/glide/releases/download/v0.2.0/glide-0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a7ea4711a8991902f8dd895e9cfd132fb9eaae7a603e22a596f15cf61ba45d27"
    end
    on_intel do
      url "https://github.com/matthewvilaysack/glide/releases/download/v0.2.0/glide-0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cdb73b756f70ff2f4d7412af0daf32c06e748607244c08ce6d4017c9fe0262ea"
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
