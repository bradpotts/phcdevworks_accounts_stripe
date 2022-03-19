# This migration comes from phcdevworks_accounts_devise (originally 20210407121952)
class AddCustomerIdToUsers < ActiveRecord::Migration[7.0]
    def change

        add_column :phcdevworks_accounts_devise_users, :payments_customer_id, :string

    end
end
