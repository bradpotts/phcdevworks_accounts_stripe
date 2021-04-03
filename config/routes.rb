PhcdevworksAccountsStripe::Engine.routes.draw do

    # User Routes
    match "/user/subscription", to: "user/subscription#user_subscription_item", via: "get"
    match "/user/plan", to: "user/plans#user_plan_list", via: "get"
    match "/user/invoices", to: "user/invoices#user_invoice_list", via: "get"

    # Admin Routes
    match "/admin/customers", to: "admin/customers#admin_customer_list", via: "get"
    match "/admin/plans", to: "admin/plans#admin_plan_list", via: "get"
    match "/admin/subscriptions", to: "admin/subscriptions#admin_subscription_list", via: "get"

    # Mount Routes
    mount PhcdevworksAccounts::Engine, :at => '/'

end
