class Account < ActiveRecord::Base
   attr_accessible :name, :type
   
   has_many :users
end
