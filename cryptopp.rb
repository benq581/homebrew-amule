class Cryptopp < Formula
  desc "Free C++ class library of cryptographic schemes"
  homepage "https://www.cryptopp.com/"
  url "https://www.cryptopp.com/cryptopp850.zip"
  version "8.5.0"
  sha256 "95fc50d59488ebf61a735cce2b2ec2c2561fc682077c7b496273d65a1ed93d9e"
 
  # https://cryptopp.com/wiki/Config.h#Options_and_Defines

  def install
    system "make", "PREFIX=#{prefix}"
    system "make", "install-lib", "PREFIX=#{prefix}"
  end
end
