class Cryptopp < Formula
  desc "Free C++ class library of cryptographic schemes"
  homepage "https://www.cryptopp.com/"
  url "https://www.cryptopp.com/cryptopp840.zip"
  version "8.4.0"
  sha256 "c0f5e5cd2c693c8160e9c51666e95949a1c19fd4fe4fef874af2ec1e42757b9a"
 
  # https://cryptopp.com/wiki/Config.h#Options_and_Defines

  def install
    system "make", "PREFIX=#{prefix}"
    system "make", "install-lib", "PREFIX=#{prefix}"
  end
end
