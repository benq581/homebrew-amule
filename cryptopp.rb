class Cryptopp < Formula
  desc "Free C++ class library of cryptographic schemes"
  homepage "https://www.cryptopp.com/"
  url "https://www.cryptopp.com/cryptopp860.zip"
  version "8.6.0"
  sha256 "20aa413957d9c8ae353ee2f7747bd7ac392f933c60a53e3fd1e41cadbc48d193"
 
  # https://cryptopp.com/wiki/Config.h#Options_and_Defines

  def install
    system "make", "PREFIX=#{prefix}"
    system "make", "install-lib", "PREFIX=#{prefix}"
  end
end
