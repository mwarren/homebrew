class Ragel7 < Formula
  desc "State machine compiler"
  homepage "https://www.colm.net/open-source/ragel/"
  url "http://www.colm.net/files/ragel/ragel-7.0.0.5.tar.gz"
  sha256 "4485621ab545cb5ff16846d14648be0249f37e436e6dfa72635b6f569b104dd1"

  depends_on "colm"
  depends_on "kelbt"
  depends_on "ragel"

  def install
    system "./configure", "--disable-dependency-tracking", "--prefix=#{prefix}",
        "--with-ragel=#{Formula["ragel"].opt_prefix}",
        "--with-kelbt=#{Formula["kelbt"].opt_prefix}",
        "--with-colm=#{Formula["colm"].opt_prefix}",
        "--program-suffix=7"
    system "make", "install"
  end
end
