class Seller < ActiveRecord::Base
	 seems_rateable :stars# :speed, :effectiveness
	 belongs_to :location
	 has_many :menu_items
	 has_many :categories
end