class Colm < Formula
  desc "Program transformation language"
  homepage "https://www.colm.net/open-source/colm/"
  url "https://www.colm.net/files/colm/colm-0.13.0.2.tar.gz"
  sha256 "4cbbd435cbf4f4e103fc1391b55fe59b0dbdd56e63ca9ec1d1bbf7e5d02be051"

  def install
    system "./configure", "--disable-dependency-tracking", "--prefix=#{prefix}"
    system "make", "install"
  end
end
