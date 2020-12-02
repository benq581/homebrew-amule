class Cryptopp < Formula
  desc "Free C++ class library of cryptographic schemes"
  homepage "https://www.cryptopp.com/"
  url "https://www.cryptopp.com/cryptopp820.zip"
  version "8.2.0"
  sha256 "03f0e2242e11b9d19b28d0ec5a3fa8ed5cc7b27640e6bed365744f593e858058"
 
  # https://cryptopp.com/wiki/Config.h#Options_and_Defines

  def install
    system "make", "PREFIX=#{prefix}"
    system "make", "install-lib", "PREFIX=#{prefix}"
  end
end
