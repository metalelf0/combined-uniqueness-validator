# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "combined_uniqueness_validator"
  s.version     = "0.1.1"
  s.authors     = ["Andrea Schiavini"]
  s.email       = ["metalelf0@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{A multiple fields validator for Rails3: like a primary key, but logical}
  s.description = %q{A multiple fields validator for Rails3: like a primary key, but logical}

  s.rubyforge_project = "combined_uniqueness_validator"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  s.add_development_dependency "rspec"
  s.add_dependency 'activerecord'
  s.add_dependency 'activemodel'
  # s.add_runtime_dependency "rest-client"
end
