cask "common-repo" do
  version "0.36.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/common-repo/common-repo/releases/download/v#{version}/common-repo-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER"
    else
      url "https://github.com/common-repo/common-repo/releases/download/v#{version}/common-repo-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/common-repo/common-repo/releases/download/v#{version}/common-repo-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "PLACEHOLDER"
    else
      url "https://github.com/common-repo/common-repo/releases/download/v#{version}/common-repo-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  desc "Common repository management CLI"
  homepage "https://github.com/common-repo/common-repo"

  binary "common-repo"

  no_autobump! because: :automatically_updates

  zap trash: "~/.config/common-repo"
end
