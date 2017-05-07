class User < ActiveRecord::Base
  Validates :name,precence: true
end
