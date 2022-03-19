### PHCDevworks Accounts Stripe Addon
  
Rails Stripe Management System add-on for PHCDevworks Accounts engines.

### Administrative Views
* View invoices
* View subscribers
* View customers

#### Step 1 - Add PHCDevworks Accounts Devise & PHCDevworks Accounts Stripe to your gemfile run command
  
    gem 'phcdevworks_accounts_devise'
	gem 'phcdevworks_accounts_stripe'
	bundle install

#### Step 2 - Copy Phcdevworks Account's Database Tables  
To copy requried database migrations, copy each command individually to your terminal's command line.  

	rails phcdevworks_accounts_devise:install:migrations
	rails db:migrate

#### Step 3 - Mount Phcdevworks Account Devise & PHCDevworks Account Stripe to Add Routes
Mount Phcdevworks Press by adding code below to your routes file.  
  
    mount PhcdevworksAccountsDevise::Engine, :at => '/'
    mount PhcdevworksAccountsStripe::Engine => "/"
  
#### Step 4 - Recompile Assets  
To properly function re-compile your application's assets to copy over required files.

	rails assets:clobber
	rails assets:precompile

#### Step 5 - Add ENV Variables
  
    Secret Key = ENV['PHCDEV_STRIPE_SK']
    Publishable Key = ENV['PHCDEV_STRIPE_PK']
  
#### Customizations - Generate Contact Form View (Customization)  
All Phcdevworks Stripe views and layouts can be overwritten by copying files to your application.

	rails generate phcdevworks_accounts_stripe:views
	
### Status  
  
[![Gem Version](https://badge.fury.io/rb/phcdevworks_accounts_stripe.svg)](https://badge.fury.io/rb/phcdevworks_accounts_stripe) [![Publish to Github.com](https://github.com/phcdevworks/phcdevworks_accounts_stripe/actions/workflows/publish_gem_github_com.yml/badge.svg)](https://github.com/phcdevworks/phcdevworks_accounts_stripe/actions/workflows/publish_gem_github_com.yml) [![Publish to Rubygems.org](https://github.com/phcdevworks/phcdevworks_accounts_stripe/actions/workflows/publish_gem_rubygems_org.yml/badge.svg)](https://github.com/phcdevworks/phcdevworks_accounts_stripe/actions/workflows/publish_gem_rubygems_org.yml)
