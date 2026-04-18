cask "common-repo" do
  version "0.36.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/common-repo/common-repo/releases/download/v#{version}/common-repo-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "5f78959458ccf0d0dae74586ba9283755c8b943cc2b96b298a4442e2e9bef6e3"
    else
      url "https://github.com/common-repo/common-repo/releases/download/v#{version}/common-repo-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/common-repo/common-repo/releases/download/v#{version}/common-repo-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "769f9d7147601f85dc98acac9a08154e2965073e846b32a2d165a466bc41da85"
    else
      url "https://github.com/common-repo/common-repo/releases/download/v#{version}/common-repo-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3804ccf87ab6f536bca6a5be06ec3882ac5788c6cc18160a9b7e1933611f9f28"
    end
  end

  desc "Common repository management CLI"
  homepage "https://github.com/common-repo/common-repo"

  binary "common-repo"

  zap trash: "~/.config/common-repo"
end
