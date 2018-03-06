class ClientsController < ApplicationController

	before_action :authenticate_client!
	

	def index
	
	@clients = Client.all
	@boats = Boat.all

	end


	def new
 
	end


	def create 
		
	end


	def show

		@boats = Boat.all
		@client = Client.find(current_client.id)
		render :layout => false
		


	end


	def edit
	@client = Client.find(current_client.id)	
	@client.update(client_params)
	end


	def update
	@client = Client.find(current_client.id)
	@client.update(client_params)
	if @client.save
		redirect_to "/clients/#{@client.id}"
	end
end


	def destroy
		
	end

def client_params
  
params.require(:client).permit(:name, :rate)
end




end
