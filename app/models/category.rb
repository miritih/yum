class Category < ActiveRecord::Base
	has_many :menu_items
	belongs_to :seller
end
