require_relative "lib/phcdevworks_accounts_stripe/version"

Gem::Specification.new do |spec|

  spec.name        = "phcdevworks_accounts_stripe"
  spec.version     = PhcdevworksAccountsStripe::VERSION
  spec.authors     = ["PHCDevworks"]
  spec.email       = ["imfo@phcdevworks.com"]
  spec.homepage    = "https://phcdevworks.com/"
  spec.summary     = "Rails 7 - Engine - Accounts - Stripe Payments"
  spec.description = "Ruby on Rails 7 Stripe Addon for PHCDevworks Accounts plugin."
  spec.license     = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/phcdevworks/phcdevworks_accounts_stripe"
  spec.metadata["changelog_uri"] = "https://github.com/phcdevworks/phcdevworks_accounts_stripe/releases"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  # Main Dependencies
  spec.add_dependency "rails", "~> 7.0"
  spec.add_dependency "jbuilder", "~> 2.11"
  spec.add_dependency "paper_trail", "~> 12.1"

  # Theme Dependencies
  spec.add_dependency "phcthemes_admin_panel_pack", "~> 5.1"
  spec.add_dependency "phcthemes_web_theme_pack", "~> 5.0"

  # Helper Dependencies
  spec.add_dependency "phcdevworks_active_menus", "~> 3.0"
  spec.add_dependency "phcdevworks_core", "~> 3.0"
  spec.add_dependency "phcdevworks_notifications", "~> 3.1"
  spec.add_dependency "phcdevworks_titleseo", "~> 4.0"

  # Frontend Dependencies
  spec.add_dependency "wicked", "~> 1.4"
  spec.add_dependency "friendly_id", "~> 5.4"

  # Mailer Dependencies
  spec.add_dependency "mail_form", "~> 1.9"

  # Images & Service Support Dependencies
  spec.add_dependency "aws-sdk-s3", "~> 1.113"
  spec.add_dependency "google-cloud-storage", "~> 1.36"
  spec.add_dependency "mini_magick", "~> 4.11"

  # Security & Payment Dependencies
  spec.add_dependency "devise", "~> 4.8"
  spec.add_dependency "stripe", "~> 5.44"

  # Development Dependencies
  spec.add_development_dependency "factory_bot_rails", "~> 6.2"
  spec.add_development_dependency "rspec-rails", "~> 5.0"
  spec.add_development_dependency "spring", "~> 3.0"
  spec.add_development_dependency "spring-commands-rspec", "~> 1.0"
  spec.add_development_dependency "sqlite3", "~> 1.4"

end