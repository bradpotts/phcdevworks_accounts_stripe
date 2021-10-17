require_dependency "phcdevworks_accounts_stripe/application_controller"

module PhcdevworksAccountsStripe
    class Admin::CustomersController < ApplicationController

        # Filters
        before_action :authenticate_user!
        include PhcdevworksCore::PhcdevworksPluginsHelper
        before_action :phcdevworks_accounts_admin_only

        # Customers - List
        def admin_customer_list
            @admin_customer_list = Stripe::Customer.list({limit: 100})
        end

    end
end
