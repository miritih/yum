class User < ActiveRecord::Base
	seems_rateable_rater
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         	:recoverable, :rememberable, :confirmable, :trackable, :validatable
end
