$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "rails_admin_name_field/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "rails_admin_name_field"
  s.version     = RailsAdminNameField::VERSION
  s.authors     = ["Dunya Kirkali"]
  s.email       = ["dunyakirkali@gmail.com"]
  s.homepage    = "https://github.com/dunyakirkali/rails_admin_name_field"
  s.summary     = "RailsAdmin Name Field"
  s.description = "RailsAdmin Name Field"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 3.1"

  s.add_development_dependency "sqlite3"
end
