class Ruby193 < FPM::Cookery::Recipe
  description ' Open Source toolkit implementing the Secure Sockets Layer (SSL v2/v3) and Transport Layer Security (TLS v1) protocols'

  name 'libopenssl'
  version '1.0.1.e'
  revision 1
  homepage 'http://www.openssl.org/'
  source 'http://www.openssl.org/source/openssl-1.0.1e.tar.gz'
  sha256 'f74f15e8c8ff11aa3d5bb5f276d202ec18d7246e95f961db76054199c69c1ae3'

  maintainer '<dario@atlantbh.com>'
  vendor     'fpm'
  license    'MIT license'

  section 'libraries'

  platforms [:ubuntu, :debian] do
	build_depends 'build-essential'
  end

  platforms [:fedora, :redhat, :centos] do
	build_depends 'gcc', 'gcc-c++', 'make'
  end

  def build
    #config :prefix => destdir
    safesystem "./config --prefix=#{destdir} shared zlib-dynamic"
    make
  end

  def install
    make :install
  end
end
