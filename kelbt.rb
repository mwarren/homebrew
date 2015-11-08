class Kelbt < Formula
  desc "Kelbt, a ragel depdency"
  homepage "https://www.colm.net/open-source/ragel/"
  url "http://www.colm.net/files/kelbt/kelbt-0.16.tar.gz"
  sha256 "252566b17001b082ad03b8eb5ae0cde9429b661478b605ec018840cba7a2c4b3"

  def install
    system "./configure", "--disable-dependency-tracking", "--prefix=#{prefix}"
    system "make", "install"
  end
end
