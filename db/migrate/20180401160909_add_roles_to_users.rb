class AddRolesToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :admin_role, :boolean, default: false
    add_column :users, :consumer_role, :boolean, default: true
    add_column :users, :reseller_role, :boolean, default: false
  end
end
