$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "auto_assigner/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "auto_assigner"
  spec.version     = AutoAssigner::VERSION
  spec.authors     = ["kei"]
  spec.email       = ["kei.takakuda.0415@icloud.com"]
  spec.homepage    = "https://github.com/takakuda/auto_assigner"
  spec.summary     = "remove before_action each controller"
  spec.description = "remove before_action each controller"
  spec.license     = "MIT"

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 5"

  spec.add_development_dependency "sqlite3"
  spec.add_development_dependency 'byebug'
  spec.add_development_dependency "rspec-rails"
end
