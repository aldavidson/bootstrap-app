class Agency < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :name,
      :address1, :address2, :town, :country_code, :postcode,
      :telephone,
      :created_by_user_id
      
  belongs_to  :created_by_user_id
  has_many    :agents
end
