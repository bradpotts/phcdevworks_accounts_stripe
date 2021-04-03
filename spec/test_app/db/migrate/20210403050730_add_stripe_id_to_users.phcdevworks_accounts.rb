# This migration comes from phcdevworks_accounts (originally 20210402042717)
class AddStripeIdToUsers < ActiveRecord::Migration[6.1]
  def change

    add_column :phcdevworks_accounts_users, :stripe_customer_id, :string

  end
end
