class AddAccountName < ActiveRecord::Migration
  def up
    add_column :accounts, :name, :string
  end

  def down
    remove_column :accounts, :name  
  end
end
