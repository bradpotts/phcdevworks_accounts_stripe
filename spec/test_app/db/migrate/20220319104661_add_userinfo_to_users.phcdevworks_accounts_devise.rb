# This migration comes from phcdevworks_accounts_devise (originally 20191012060241)
class AddUserinfoToUsers < ActiveRecord::Migration[7.0]
  def change

    add_column :phcdevworks_accounts_devise_users, :firstname, :string
    add_column :phcdevworks_accounts_devise_users, :lastname, :string
    add_column :phcdevworks_accounts_devise_users, :username, :string
    add_column :phcdevworks_accounts_devise_users, :org_id, :string

    add_index :phcdevworks_accounts_devise_users, :firstname
    add_index :phcdevworks_accounts_devise_users, :lastname
    add_index :phcdevworks_accounts_devise_users, :username, unique: true
    add_index :phcdevworks_accounts_devise_users, :org_id, unique: true

  end
end
