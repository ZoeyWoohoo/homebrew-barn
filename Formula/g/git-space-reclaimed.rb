class GitSpaceReclaimed < Formula
  desc "Tool for analyzing storage space reclaimed by deleting images in Git repos"
  homepage "https://github.com/ZoeyWoohoo/git-space-reclaimed"
  url "https://github.com/ZoeyWoohoo/git-space-reclaimed/archive/refs/tags/v1.0.1.tar.gz"
  # curl -L https://github.com/ZoeyWoohoo/git-space-reclaimed/archive/refs/tags/v1.0.1.tar.gz | shasum -a 256
  sha256 "ecd47d24c5b6ed2e296bda85ccaa6570ff825b96d8900718dd270f59546f1c42"
  license "MIT"
  head "https://github.com/ZoeyWoohoo/git-space-reclaimed.git", branch: "main"

  uses_from_macos "bc"

  def install
    bin.install "git-space-reclaimed.sh" => "git-space-reclaimed"
  end

  test do
    system bin/"git-space-reclaimed", "--h"
  end
end 