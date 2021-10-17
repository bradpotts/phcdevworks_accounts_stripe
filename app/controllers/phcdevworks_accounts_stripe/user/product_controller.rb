require_dependency "phcdevworks_accounts_stripe/application_controller"

module PhcdevworksAccountsStripe
    class User::ProductController < ApplicationController

        # Security Filters
        before_action :authenticate_user!

        def user_product_list
        end

    end
end
