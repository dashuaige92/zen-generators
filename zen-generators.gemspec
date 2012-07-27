Gem::Specification.new do |s|
  s.name        = "zen-generators"
  s.version     = "0.0.1"
  s.authors     = ["Kenneth Cheng"]
  s.email       = ["kenthesage@gmail.com"]
  s.homepage    = "http://github.com/kenthesage/zen-generators"
  s.summary     = "Rails 3 generators for various gems."
  s.description = "Rails 3 generators for various gems and libraries, including acts_as_api, backbone, etc."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency('rails', '~> 3.2.6')
  s.add_dependency('coffee-script', '~> 2.2.0')
  s.add_dependency('ejs', '~> 1.0.0')
end
