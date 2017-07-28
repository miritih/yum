class OrderItem < ActiveRecord::Base
	belongs_to :order
    belongs_to :menu_item
    validates :order_id, :menu_item_id, presence: true
    validates :quantity, numericality: {greater_than_or_equal_to: 1, only_integer: true}
     def subtotal
    	self.quantity * self.menu_item.price
    end
end
