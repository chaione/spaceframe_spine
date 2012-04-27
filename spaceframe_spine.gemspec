# -*- encoding: utf-8 -*-
require File.expand_path('../lib/spaceframe_spine/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Scott Burton", "Ryan Marsh"]
  gem.email         = ["scott@chaione.com", "ryan.marsh@chaione.com"]
  gem.description   = %q{Spaceframe for Spine is a set of Rails generators to implement ChaiOne's best practices for a client-side application.}
  gem.summary       = %q{Spaceframe for Spine is a set of Rails generators to implement ChaiOne's best practices for a client-side application.}
  gem.homepage      = ""

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "spaceframe_spine"
  gem.require_paths = ["lib"]
  gem.version       = SpaceframeSpine::VERSION
end
