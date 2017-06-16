class WelcomeController < ApplicationController
  def home
    @cities=City.all
    @sellers=Seller.take(10)
    @grouped_options =@cities.collect{|city|
                                    [city.name, 
                                    city.hoods.collect{|h| 
                                    [h.name,h.id]
                                    }]}
  end
end
