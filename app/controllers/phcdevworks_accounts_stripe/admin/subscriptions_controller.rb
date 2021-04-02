require_dependency "phcdevworks_accounts_stripe/application_controller"

module PhcdevworksAccountsStripe
    class Admin::SubscriptionsController < ApplicationController

        def admin_subscription_list
            @admin_subscription_list = Stripe::Subscription.list({limit: 100})
        end

    end
end
