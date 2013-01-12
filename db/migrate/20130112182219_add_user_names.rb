class AddUserNames < ActiveRecord::Migration
  def up
    add_column :users, :first_name, :string, :limit=>128
    add_column :users, :last_name, :string, :limit=>128
    add_column :users, :informal_name, :string, :limit=>128
    
    add_index :users, [:last_name], :name=>'ix_users_last_name'
    add_index :users, [:first_name], :name=>'ix_users_first_name'
    add_index :users, [:informal_name], :name=>'ix_users_informal_name'
  end

  def down
    drop_column :users, :first_name
    drop_column :users, :last_name
    drop_column :users, :informal_name
  end
end
