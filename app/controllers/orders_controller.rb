class OrdersController < ApplicationController
  def destroy
    Order.find(session[:order_id]).delete
    reset_session
    redirect_to request.referrer
  end
end
