class MenuItem < ActiveRecord::Base
	belongs_to :seller
	validates :seller, presence: :true

	belongs_to :category
	validates :category, presence: :true
	
	has_many :order_items
end
