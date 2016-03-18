class Ragel7 < Formula
  desc "State machine compiler"
  homepage "https://www.colm.net/open-source/ragel/"
  url "http://www.colm.net/files/ragel/ragel-7.0.0.6.tar.gz"
  sha256 "7a1f50f8cf1168ced7cb834edd697448d1d012795291527926d646b8d99a43db"

  depends_on "colm"

  def install
    system "./configure", "--disable-dependency-tracking", "--prefix=#{prefix}",
        "--with-colm=#{Formula["colm"].opt_prefix}",
	"--docdir=#{prefix}/share/doc/ragel7",
        "--program-suffix=7"
    system "make", "install"
  end
end
