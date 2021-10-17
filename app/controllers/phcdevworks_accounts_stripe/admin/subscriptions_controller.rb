require_dependency "phcdevworks_accounts_stripe/application_controller"

module PhcdevworksAccountsStripe
    class Admin::SubscriptionsController < ApplicationController

        # Filters
        before_action :authenticate_user!
        include PhcdevworksCore::PhcdevworksPluginsHelper
        before_action :phcdevworks_accounts_admin_only

        def admin_subscription_list
            @admin_subscription_list = Stripe::Subscription.list({limit: 100})
        end

    end
end
