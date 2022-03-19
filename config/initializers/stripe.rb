require 'stripe'

Rails.configuration.stripe = {
  :publishable_key => ENV['PHCDEV_STRIPE_PK'],
  :secret_key      => ENV['PHCDEV_STRIPE_SK']
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]
