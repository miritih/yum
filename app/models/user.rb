class User < ActiveRecord::Base
	seems_rateable_rater
	has_many :orders
	ROLES = %i[admin seller]
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         	:recoverable, :rememberable, :confirmable, :trackable, :validatable
         	
         	
end
