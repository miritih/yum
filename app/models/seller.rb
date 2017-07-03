class Seller < ActiveRecord::Base
     seems_rateable :stars# :speed, :effectiveness
	 belongs_to :hood
	 has_many :menu_items
	 has_many :categories
	 validates :opening_time,:closing_time, presence: true
end
