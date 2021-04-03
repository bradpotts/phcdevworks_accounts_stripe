require_dependency "phcdevworks_accounts_stripe/application_controller"

module PhcdevworksAccountsStripe
    class User::PlanController < ApplicationController

        # Security Filters
        before_action :authenticate_user!

        def user_plan_list
        end

    end
end
