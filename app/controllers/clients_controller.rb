class ClientsController < ApplicationController

	before_action :authenticate_client!
	def assign

	end


	def index
	
	@clients = Client.all

	end


	def new
 
	end


	def create 
		
	end


	def show
		render :layout => false
		@client = Client.find(current_client.id)
		
		# @jobs = Job.all
		@boats = Boat.all


		@boats = current_client.boats
		# @jobs = current_client.jobs

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
