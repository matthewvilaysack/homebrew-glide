class Glide < Formula
  desc "Keep your priorities in view while you work in the terminal; onboarding agent for engineering teams"
  homepage "https://tryglide.dev"
  version "0.7.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/matthewvilaysack/glide/releases/download/v0.7.0/glide-0.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "c4d6a504a5439288796487ed62ef0d61046d375446c4685e59f4215b08074684"
    end
    on_intel do
      url "https://github.com/matthewvilaysack/glide/releases/download/v0.7.0/glide-0.7.0-x86_64-apple-darwin.tar.gz"
      sha256 "f58518f27e05a4995e543e3b728cff6d797fcabef403f7aa7b8fb5a1208fae93"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthewvilaysack/glide/releases/download/v0.7.0/glide-0.7.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1c2a8c83e4d064b82a99416e2c6008190056c02185ae7e6f46e22e281a5dbd0e"
    end
    on_intel do
      url "https://github.com/matthewvilaysack/glide/releases/download/v0.7.0/glide-0.7.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6603ea00d50bd603cb815e80f5d01d3c5a6000c7ac35f0d0a39835ddcd82a25f"
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
