class Rpg < Formula
  desc "Ruby package management for UNIX"
  homepage "https://github.com/rtomayko/rpg"
  url "https://github.com/downloads/rtomayko/rpg/rpg-0.3.0.tar.gz"
  sha256 "c350f64744fb602956a91a57c8920e69058ea42e4e36b0e74368e96954d9d0c7"

  head "https://github.com/rtomayko/rpg.git"

  bottle do
    cellar :any_skip_relocation
    sha256 "ddb4f887b798101d95300f0b0c22a0760d06158c09796e9bfb65869f28b69434" => :sierra
    sha256 "be6550c915e361dcc0e020048f9a5f4ea37f1c5890a526282a3d70c610594981" => :el_capitan
    sha256 "5c1af29955697dcd46ff58fd70f9aca986b977f3cc17f638822c81289f180df2" => :yosemite
    sha256 "2ebf1a744c3c072c107883f565c04154b3e530c93868bb438bb90a1be35a4cb7" => :mavericks
    sha256 "d32135e52bef3d16d6538dd8050cef4e1081474cc1156462a900ab2afa28b448" => :mountain_lion
  end

  def install
    system "./configure", "--prefix=#{prefix}"
    system "make"
    system "make", "install"
  end

  test do
    system "#{bin}/rpg", "config"
  end
end
