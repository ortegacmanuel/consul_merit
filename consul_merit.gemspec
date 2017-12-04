$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "consul_merit/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "consul_merit"
  s.version     = ConsulMerit::VERSION
  s.authors     = ["Manuel Ortega"]
  s.email       = ["manuel@lasindias.coop"]
  s.homepage    = "https://github.com/consul/consul"
  s.summary     = "CONSULMerit adds reputation behavior to CONSUL citizen participation software."
  s.description = "CONSULMerit adds reputation behavior to CONSUL citizen participation software."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.10"

  s.add_development_dependency "pg"
  s.add_dependency "merit", "~> 3.0"
end
