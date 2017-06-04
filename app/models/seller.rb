class Seller < ActiveRecord::Base
	 seems_rateable :stars# :speed, :effectiveness
	 belongs_to :location
end
