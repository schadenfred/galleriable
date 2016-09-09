$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "galleriable/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "galleriable"
  s.version     = Galleriable::VERSION
  s.authors     = ["schadenfred"]
  s.email       = ["fred.schoeneman@gmail.com"]
  s.homepage    = "https://github.com/schadenfred/bacchanal"
  s.summary     = "Provides galleries and photos to different parent objects"
  s.description = "Rails engine that allows you to add photos, and galleries of photos, to galleriable models in your rails app."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.0.0", ">= 5.0.0.1"

  s.add_development_dependency "sqlite3"
end
