$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "rails_sortable/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "rails_sortable"
  s.version     = RailsSortable::VERSION
  s.authors     = ["itmammoth"]
  s.email       = ["itmammoth@gmail.com"]
  s.homepage    = "https://github.com/itmammoth/rails_sortable"
  s.summary     = "Easy drag & drop sorting for rails."
  s.description = "rails_sortable provides easy drag & drop sorting for rails 4 and 5."
  s.licenses    = ['MIT']

  s.files = Dir["{app,config,lib,vendor/assets}/**/*", "LICENSE", "Rakefile", "README.md"]

  s.test_files = Dir["spec/**/*"]

  s.add_development_dependency "appraisal", "~> 2.2"
  s.add_development_dependency "jquery-rails", "~> 4.3"
  s.add_development_dependency "jquery-ui-rails", "~> 6.0"
  s.add_development_dependency "sqlite3", "~> 1.3.6"
  s.add_development_dependency "rspec-rails", "~> 3.5"
  s.add_development_dependency "pry-rails", "~> 0.3"
end
