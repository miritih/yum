class OrderItem < ActiveRecord::Base
	belongs_to :order
    belongs_to :menu_item
     def subtotal
    	self.quantity * self.menu_item.price
    end
end
