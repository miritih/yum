class LocationsController < ApplicationController
  def show
   @location=Location.find(params[:id])
   @sellers=@location.sellers
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
