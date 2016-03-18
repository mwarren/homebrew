class Colm < Formula
  desc "Program transformation language"
  homepage "https://www.colm.net/open-source/colm/"
  url "https://www.colm.net/files/colm/colm-0.13.0.3.tar.gz"
  sha256 "427e52a366b53d5192ac8e7a5fc597c470b3f25dcc6e18677199f535ad764d35"

  def install
    system "./configure", "--disable-dependency-tracking", "--prefix=#{prefix}"
    system "make", "install"
  end
end
