$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "bugbug/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "bugbug"
  s.version     = Bugbug::VERSION
  s.authors     = ["Sławomir Pasoń"]
  s.email       = ["roshendal@gmail.com"]
  s.homepage    = "http://pason.org"
  s.summary     = %q{Testing toolbar}
  s.description = %q{Testing toolbar}

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", ">= 4.0.0"
  s.add_dependency "erubis", "~> 2.7.0"
  s.add_dependency "jquery-rails"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails"
end
