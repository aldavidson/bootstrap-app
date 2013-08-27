module Workflows
  class UserWorkflow
    attr_accessor :user
  
    def initialize(user)
      self.user = user
    end
  
    def before_create
      default_account_to_new_account
    end
  
    def default_account_to_new_account
      unless user.account.present?
        user.account ||= Generators::AccountGenerator.generate_default_account(user)
        user.account.save!
      end
    end
  end
end