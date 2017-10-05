class User < ActiveRecord::Base
	seems_rateable_rater
	has_many :orders
	ROLES = %i[admin seller banned]
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         	:recoverable, :rememberable, :confirmable, :trackable, :validatable
         	
         	
    rails_admin do
      list do
        field :email
        field :created_at
        field :sign_in_count
        field :last_sign_in_at
        field :fname
        field :lname
        field :role
     
      end
      
      edit do
        field :fname
        field :lname
        field :email
        field :password
        field :password_confirmation
        field :role
      end
    end
end
