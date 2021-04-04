require_dependency "phcdevworks_accounts_stripe/application_controller"

module PhcdevworksAccountsStripe
    class Admin::ProductsController < ApplicationController

        # Filters
        before_action :authenticate_user!
        include PhcdevworksCore::PhcdevworksPluginsHelper
        before_action :phcdevworks_accounts_admin_only

        def admin_products_list
            @admin_products_list = Stripe::Product.list
        end

    end
end
