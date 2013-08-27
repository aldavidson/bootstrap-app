class Agent < ActiveRecord::Base
  attr_accessible :agency_id, 
      :first_name, :last_name,
      :job_title,
      :work_telephone,
      :mobile,
      :email,
      :created_by_user_id
  
  belongs_to :agency
  belongs_to :created_by_user_id
end
