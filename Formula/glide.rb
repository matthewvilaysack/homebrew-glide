class Glide < Formula
  desc "Keep your priorities in view while you work in the terminal; onboarding agent for engineering teams"
  homepage "https://tryglide.dev"
  version "0.5.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/matthewvilaysack/glide/releases/download/v0.5.1/glide-0.5.1-aarch64-apple-darwin.tar.gz"
      sha256 "b9f4cc1879f5a9676d03acaba3f3c7b7023691be50557db676f1e070272d9390"
    end
    on_intel do
      url "https://github.com/matthewvilaysack/glide/releases/download/v0.5.1/glide-0.5.1-x86_64-apple-darwin.tar.gz"
      sha256 "13874b79f34cf7383483813d282966e02a9ab60d1019d49b3905c5602ae550dc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthewvilaysack/glide/releases/download/v0.5.1/glide-0.5.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f96c90cf44e01882bcbb90b5d1866cf68dfbe0353f526c9e49ba9e68a8cfe311"
    end
    on_intel do
      url "https://github.com/matthewvilaysack/glide/releases/download/v0.5.1/glide-0.5.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "182bc16a62e15c3ac1f946e01fd4fd8351fd6a85aa07ed7702f8aac60ce4d018"
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
