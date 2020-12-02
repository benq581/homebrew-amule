class Libupnp < Formula
  desc "Portable UPnP development kit"
  homepage "https://pupnp.sourceforge.io/"
  url "https://github.com/pupnp/pupnp/releases/download/release-1.14.0/libupnp-1.14.0.tar.bz2"
  sha256 "ecb23d4291968c8a7bdd4eb16fc2250dbacc16b354345a13342d67f571d35ceb"
  license "BSD-3-Clause"

  def install
    args = %W[
      --disable-debug
      --disable-dependency-tracking
      --prefix=#{prefix}
      --disable-ipv6
    ]

    system "./configure", *args
    system "make", "install"
  end
end
