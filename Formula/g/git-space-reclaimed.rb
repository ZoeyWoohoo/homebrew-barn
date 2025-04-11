class GitSpaceReclaimed < Formula
  desc "Tool for analyzing storage space reclaimed by deleting images in Git repos"
  homepage "https://github.com/ZoeyWoohoo/git-space-reclaimed"
  url "https://github.com/ZoeyWoohoo/git-space-reclaimed/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "7cf3a14ed2ae754a1a3310f5b29ea3d381e1d9eeeb628f1fb1d07968f4c9e83b"
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