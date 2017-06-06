class MenuItem < ActiveRecord::Base
	belongs_to :seller
	belongs_to :category
	belongs_to :order_item
end
