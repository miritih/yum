class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  helper_method :cities, :order_items
  protect_from_forgery with: :exception

private
	def cities
  		@cities=City.all
  	end
  	
  	def order_items
  		@order_items=Order.find(session[:order_id]).order_items
  	end
end
