require 'stripe'

Rails.configuration.stripe = {
  :publishable_key => 'pk_test_51Hn30iCfVkks6MxhUN43ZasxdcUIDVX3q1PdfQneHhkvH1ybSHDzEifbvePCyliUKpe8IGeRNryWwWiiCsGERwA900qC3cyXwE',
  :secret_key      => 'sk_test_51Hn30iCfVkks6MxhZTJ3PZmOXv5SPirttJBzdHyrZ9q4M7cYi5J4I5EL5DDfxJbl0CWMopVSltvcrR0FYhGIepXM00zqpjJAxD'
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]
