class GitSpaceReclaimed < Formula
  desc "Tool for analyzing storage space reclaimed by deleting images in Git repos"
  homepage "https://github.com/ZoeyWoohoo/git-space-reclaimed"
  url "https://github.com/ZoeyWoohoo/git-space-reclaimed/archive/refs/tags/v1.0.2.tar.gz"
  # curl -L https://github.com/ZoeyWoohoo/git-space-reclaimed/archive/refs/tags/v1.0.2.tar.gz | shasum -a 256
  sha256 "13d774d7704939e9ce3f3ffe387324fd044b7f38268a1d011c0f239fcc854be3"
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