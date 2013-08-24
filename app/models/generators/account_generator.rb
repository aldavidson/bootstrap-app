module Generators
  class AccountGenerator
    def self.generate_default_account( for_user )
      Account.new( account_type: Account::ACCOUNT_TYPES[:individual],
        name: for_user.informal_name
       )
    end
  end
end