class CognitiveAgileDevelopment < Formula
  desc "认知敏捷工作法 - 规约驱动开发工具 (Cognitive Agile Methodology)"
  homepage "https://github.com/42cog/42cog"
  version "0.1.0"
  license "MIT"

  # macOS Apple Silicon
  on_arm do
    url "https://github.com/42cog/42cog/releases/download/v#{version}/42cog-darwin-arm64.tar.gz"
    sha256 "feb11926a9ecf701b5ba597a3f9ed5ac3e996e3c6d07459ad59d413088a85deb"
  end

  # macOS Intel
  on_intel do
    url "https://github.com/42cog/42cog/releases/download/v#{version}/42cog-darwin-x64.tar.gz"
    sha256 "TODO_BUILD_INTEL_VERSION"
  end

  def install
    bin.install "42cog"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/42cog --version")
  end
end