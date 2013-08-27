class CreateAgents < ActiveRecord::Migration
  def change
    create_table :agents do |t|
      t.integer   :agency_id, :references=>:agency
      t.string    :first_name
      t.string    :last_name
      t.string    :job_title, :null=>true
      t.string    :work_telephone, :null=>true
      t.string    :mobile, :null=>true
      t.string    :email, :null=>true
      t.integer   :created_by_user_id
      t.timestamps
    end
  end
end
