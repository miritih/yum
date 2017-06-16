class CitiesController < ApplicationController
    def create
      @hood=Hood.find(params[:id])
      @sellers=@hood.sellers
      render partial: 'hoods/search'
    end
    
  def show
   @hood=Hood.find(params[:id])
   @sellers=@hood.sellers
   render :show
  end

  def new

  end

  def edit
  end

  def update
  end

  def delete
  end
end
