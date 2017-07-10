class MenuItem < ActiveRecord::Base
	belongs_to :seller
	belongs_to :category
	has_many :order_items
end
