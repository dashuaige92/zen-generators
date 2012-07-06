$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "zen-generators/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "zen-generators"
  s.version     = ZenGenerators::VERSION
  s.authors     = ["Kenneth Cheng"]
  s.email       = ["kenthesage@gmail.com"]
  s.homepage    = "http://github.com/kenthesage/zen-generators"
  s.summary     = "Rails 3 generators for various gems."
  s.description = "TODO: Rails 3 generators for various gems and libraries, including Backbone, etc."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.6"
  s.add_dependency('coffee-script', '~> 2.2.0')
  s.add_dependency('ejs', '~> 1.0.0')

  s.add_development_dependency "sqlite3"
end
