class Category < ActiveRecord::Base
	has_many :menu_items
	has_many :sellers
end
