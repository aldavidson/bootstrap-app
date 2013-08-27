class AddAccountIdToUser < ActiveRecord::Migration
  def change
    add_column :users, :account_id, :integer, :references=>:accounts
  end
end
