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

  #s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.files = `git ls-files`.split($/)
  s.add_development_dependency 'rspec-rails'
  s.add_dependency "rails", "~> 3.2.13"

  s.add_development_dependency "factory_girl_rails"
  s.add_development_dependency "capybara"
  s.add_development_dependency "capybara-webkit"
  s.add_development_dependency "capybara-screenshot"
  s.add_development_dependency "sqlite3"
  s.add_development_dependency "sass-rails"
  s.add_development_dependency "coffee-rails"
  s.add_development_dependency "bootstrap-sass-rails"
  s.add_runtime_dependency "bootstrap-sass-rails"
  s.add_development_dependency "selenium-webdriver", "2.33.0"
  s.add_development_dependency "launchy"
  
end
