class ChangeAccountTypeToAccountAccountType < ActiveRecord::Migration
  def up
    add_column :accounts, :account_type, :string, :null=>true
    Account.update_all( :account_type=>:type )
    add_index :accounts, :account_type, :name=>'ix_acc_account_type'
    remove_column :accounts, :type
  end

  def down
    add_column :accounts, :type, :string, :null=>true
    Account.update_all( :type=>:account_type )
    remove_column :accounts, :account_type
  end
end
