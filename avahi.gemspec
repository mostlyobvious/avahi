# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "avahi/version"

Gem::Specification.new do |s|
  s.name        = "avahi"
  s.version     = Avahi::VERSION
  s.authors     = ["Paweł Pacana"]
  s.email       = ["pawel.pacana@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Ruby bindings for Avahi daemon.}
  s.description = %q{Ruby bindings for Avahi daemon, based on DBUS.}

  s.rubyforge_project = "avahi"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency "ruby-dbus"
end
