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
	end


	def edit

	end


	def update

	end


	def destroy
		
	end
end
