class GitSpaceReclaimed < Formula
  desc "Tool for analyzing storage space reclaimed by deleting images in Git repos"
  homepage "https://github.com/ZoeyWoohoo/git-space-reclaimed"
  url "https://github.com/ZoeyWoohoo/git-space-reclaimed/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
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