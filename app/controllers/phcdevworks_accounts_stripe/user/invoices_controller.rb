require_dependency "phcdevworks_accounts_stripe/application_controller"

module PhcdevworksAccountsStripe
    class User::InvoicesController < ApplicationController

        # Security Filters
        before_action :authenticate_user!

        def user_invoice_list
            @user_invoice_list = Stripe::Invoice.list({customer: current_user.stripe_customer_id})
        end

        def user_invoice_item

            
        end

    end
end
