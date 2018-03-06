class HomeController < ApplicationController

	def index 
		@clients = Client.all
		render :layout => false 
	end

end
