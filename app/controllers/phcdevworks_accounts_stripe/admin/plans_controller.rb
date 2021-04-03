require_dependency "phcdevworks_accounts_stripe/application_controller"

module PhcdevworksAccountsStripe
    class Admin::PlansController < ApplicationController

        # Filters
        before_action :authenticate_user!
        include PhcdevworksCore::PhcdevworksPluginsHelper
        before_action :phcdevworks_accounts_admin_only

        def admin_plan_list
            @admin_plan_list = Stripe::Plan.list({limit: 100})
        end

    end
end
