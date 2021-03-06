class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me,
      :first_name, :last_name, :informal_name
  # attr_accessible :title, :body
  
  belongs_to  :account

  before_create{ |instance| instance.workflow.before_create }
  
  def workflow
    Workflows::UserWorkflow.new(self)
  end
  #memoize :workflow
end
