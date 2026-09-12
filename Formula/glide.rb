class Glide < Formula
  desc "Keep your priorities in view while you work in the terminal; onboarding agent for engineering teams"
  homepage "https://tryglide.dev"
  version "0.5.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/matthewvilaysack/glide/releases/download/v0.5.0/glide-0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "e277221253788e8517619f12a08141fb29f53747fae92bdeb04981d84fd68075"
    end
    on_intel do
      url "https://github.com/matthewvilaysack/glide/releases/download/v0.5.0/glide-0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "bc1d2b393c7b0adfeb4bde2d08b81ca02c69be0c783c0890c50b1873303666f9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthewvilaysack/glide/releases/download/v0.5.0/glide-0.5.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b9ca0ee51c75c070c57dcb7a3c634eee46f5d4d51e47495e6100dcc8c8cd50ea"
    end
    on_intel do
      url "https://github.com/matthewvilaysack/glide/releases/download/v0.5.0/glide-0.5.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3de4dd4834dfaaf800a65c0ad02ec1793fab8114ad536be40cc92f0a400ada02"
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
