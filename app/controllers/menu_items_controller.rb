class MenuItemsController < ApplicationController
  def show
  	@seller=Seller.find(params[:id])
  	#@categories=@seller.categories
  #	@items=
  end
end
