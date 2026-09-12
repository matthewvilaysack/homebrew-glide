class Glide < Formula
  desc "Keep your priorities in view while you work in the terminal; onboarding agent for engineering teams"
  homepage "https://tryglide.dev"
  version "0.6.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/matthewvilaysack/glide/releases/download/v0.6.0/glide-0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "35bee1bc481fa19aaf5fe621d056e7b8c3419dfdbcbf38353e4bb45664e1e57b"
    end
    on_intel do
      url "https://github.com/matthewvilaysack/glide/releases/download/v0.6.0/glide-0.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "10c7d83302dc8754a023357fcb656bab2a678c9ef84b15d368cf2c37092643c9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthewvilaysack/glide/releases/download/v0.6.0/glide-0.6.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "22be30f1c9871f996219132d4326ec8caead4df6e010b5f83f7f1d01292a8d8e"
    end
    on_intel do
      url "https://github.com/matthewvilaysack/glide/releases/download/v0.6.0/glide-0.6.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "45432dc4b31a02071d697e044f89566eeb6d6eb95d7279d1d4ab6e3e67af0fd0"
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
