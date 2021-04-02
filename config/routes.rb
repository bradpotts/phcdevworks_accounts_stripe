PhcdevworksAccountsStripe::Engine.routes.draw do

    match "/admin/customers/index", to: "admin/customers#admin_customer_list", via: "get"
    match "/admin/plans/index", to: "admin/plans#admin_plan_list", via: "get"
    match "/admin/subscriptions/index", to: "admin/subscriptions#admin_subscription_list", via: "get"

end
