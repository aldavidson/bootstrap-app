class Account < ActiveRecord::Base
   attr_accessible :name, :account_type
   
   has_many :users
   
   ACCOUNT_TYPES = {
      individual: 'individual', professional: 'professional', enterprise: 'enterprise'
    }
end
