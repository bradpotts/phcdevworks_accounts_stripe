require_dependency "phcdevworks_accounts_stripe/application_controller"

module PhcdevworksAccountsStripe
    class Admin::InvoicesController < ApplicationController

        # Filters
        before_action :authenticate_user!
        include PhcdevworksCore::PhcdevworksPluginsHelper
        before_action :phcdevworks_accounts_admin_only

        # Customers - List
        def admin_invoice_list
            @admin_invoice_list = Stripe::Invoice.list({limit: 100})
        end

    end
end
