class Ruby193 < FPM::Cookery::Recipe
  description 'RubyGems'

  name 'rubygems'
  version '2.4.2'
  revision 1
  homepage 'https://rubygems.org/'
  source 'http://production.cf.rubygems.org/rubygems/rubygems-2.1.11.tgz'
  sha256 '75b841bfbbafe1cfc556630d2368e654dd2f5aec457d12d1a3ae69d2e487a2b7'

  maintainer '<dario@atlantbh.com>'
  vendor     'fpm'
  license    'MIT license'

  section 'libraries'

#  omnibus_package true
#  omnibus_dir     "/opt/#{name}"
#  omnibus_recipes 'ruby'

#  platforms [:ubuntu, :debian] do
#	build_depends 'build-essential'
#  end

#  platforms [:fedora, :redhat, :centos] do
#	build_depends 'gcc', 'gcc-c++', 'make'
#  end

  def build
#    configure :prefix => destdir
#    make
  end

  def install
    safesystem "cp -r . #{destdir}/rubygems"
    #make :install
#require (RUBY_VERSION.match(/1\.8\..*/) ? 'ruby-debug' : 'debugger');Debugger.start; debugger

 #   puts "////////////////////////"
 #   puts `ls`
  #  safesystem "#{destdir}/bin/ruby setup.rb"
  end
end
