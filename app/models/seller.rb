class Seller < ActiveRecord::Base
	 seems_rateable # :quality, :speed, :effectiveness
	 belongs_to :location
end
