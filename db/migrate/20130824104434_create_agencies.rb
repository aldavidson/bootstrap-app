class CreateAgencies < ActiveRecord::Migration
  def change
    create_table :agencies do |t|
      t.string  :name
      t.string  :address1, :null=>true
      t.string  :address2, :null=>true
      t.string  :town, :null=>true
      t.string  :country_code, :null=>true
      t.string  :telephone, :null=>true
      t.string  :postcode
      t.integer :created_by_user_id, :references=>:users
      t.timestamps
    end
  end
end
