$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "bootstrap_form/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "bootstrap_form"
  s.version     = BootstrapForm::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of BootstrapForm."
  s.description = "TODO: Description of BootstrapForm."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.add_development_dependency 'rspec-rails'
  s.add_dependency "rails", "~> 3.2.13"

  s.add_development_dependency "factory_girl_rails"
  s.add_development_dependency "capybara"
  s.add_development_dependency "sqlite3"
  s.add_development_dependency "bootstrap-sass-rails"
  
end
