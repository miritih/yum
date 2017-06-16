class HoodsController < ApplicationController
  def show
     @hood=Hood.find(params[:id])
     @sellers=@hood.sellers
     render :show
  end
end
