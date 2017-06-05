class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  helper_method :locations
  protect_from_forgery with: :exception

private
	def locations
  		@locations=Location.all
  	end
end
