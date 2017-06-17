class Seller < ActiveRecord::Base
     seems_rateable :stars# :speed, :effectiveness
	 belongs_to :hood
	 has_many :menu_items
	 has_many :categories
end
