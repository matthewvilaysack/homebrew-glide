class Glide < Formula
  desc "Keep your priorities in view while you work in the terminal; onboarding agent for engineering teams"
  homepage "https://tryglide.dev"
  version "0.4.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/matthewvilaysack/glide/releases/download/v0.4.1/glide-0.4.1-aarch64-apple-darwin.tar.gz"
      sha256 "a66cae206499c1f7d1d28432ba6969b493fe586de58c481be73ee0ddfaa8fe94"
    end
    on_intel do
      url "https://github.com/matthewvilaysack/glide/releases/download/v0.4.1/glide-0.4.1-x86_64-apple-darwin.tar.gz"
      sha256 "573ab526ea48ea5b8bc70fa91b633a8da7baa184e1a44e30c7b7c81e65745153"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthewvilaysack/glide/releases/download/v0.4.1/glide-0.4.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e8e8a93be4c8402e6ffdbcfeb8ce17ea8f06d4e7fff2f92f25dc7021584d97f6"
    end
    on_intel do
      url "https://github.com/matthewvilaysack/glide/releases/download/v0.4.1/glide-0.4.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "31a5ec451a1725ded902e404c61de78efbad9809b84211ded68e7189cd87427e"
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
