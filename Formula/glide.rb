class Glide < Formula
  desc "Keep your priorities in view while you work in the terminal; onboarding agent for engineering teams"
  homepage "https://tryglide.dev"
  version "0.4.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/matthewvilaysack/glide/releases/download/v0.4.0/glide-0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "46f90a74fc937e145ed579f83df538376f42ba111c6fcb41b9cf170d6dcc09ad"
    end
    on_intel do
      url "https://github.com/matthewvilaysack/glide/releases/download/v0.4.0/glide-0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "2a14bc16ddd59f53058494e54806a6bc6815da781ddce653e15bc87e6a15974f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthewvilaysack/glide/releases/download/v0.4.0/glide-0.4.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "64ea2c61bd0bca716a3816ab32d8b9a34cbc53a23c78988a267037fb9b38e2af"
    end
    on_intel do
      url "https://github.com/matthewvilaysack/glide/releases/download/v0.4.0/glide-0.4.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9c011ebd1b5d267cc5dc83adcb969f935344c4797568fbd098319df836857044"
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
