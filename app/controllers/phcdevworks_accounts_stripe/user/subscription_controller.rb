require_dependency "phcdevworks_accounts_stripe/application_controller"

module PhcdevworksAccountsStripe
    class User::SubscriptionController < ApplicationController

        # Security Filters
        before_action :authenticate_user!

        def user_subscription_item
        end

        def user_subscription_cancel
        end

    end
end
