# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "myyard/version"

Gem::Specification.new do |s|
  s.name        = "myyard"
  s.version     = Myyard::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Dr Nic Williams"]
  s.email       = ["drnicwilliams@gmail.com"]
  s.homepage    = "http://github.com/drnic/myyard"
  s.summary     = %q{Deploy Rails apps to a local yard of VMs}
  s.description = <<-EOS.gsub(/^    /, '')
    The whole team can experience a constant, reproducable development environment with virtual machines.
  EOS

  s.rubyforge_project = "myyard"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
