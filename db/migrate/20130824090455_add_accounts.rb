class AddAccounts < ActiveRecord::Migration
  def up
    create_table :accounts do |t|
      t.string    :type     # <- individual, group, pro, etc
      t.timestamps
      t.integer   :created_by_user_id, :references => :users
    end
  end

  def down
    drop_table :accounts
  end
end
