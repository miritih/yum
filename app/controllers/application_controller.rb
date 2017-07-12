class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  helper_method :cities, :order_items, :cart_total
  protect_from_forgery with: :exception

private
  def cities
    @cities=City.all
  end
  
  def cart_total
    if session[:order_id]
      @total=Order.find(session[:order_id]).total
    end
  end
  	 #find and create a new item 
  def load_order
    @order = Order.find_or_initialize_by(id: session[:order_id], status: "unsubmitted")
    if @order.new_record?
      @order.save!
      session[:order_id] = @order.id
    end
  end
  def order_items
    
    if session[:order_id]
      @order_items=Order.find(session[:order_id]).order_items
    else
      @order_items=[]
    end
  end
end
