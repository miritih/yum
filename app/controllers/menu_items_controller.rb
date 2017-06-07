class MenuItemsController < ApplicationController
  def show
  	@seller=Seller.find(params[:id])
  	@items=@seller.menu_items
  #	render :show 
  end
end
