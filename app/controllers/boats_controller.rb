class BoatsController < ApplicationController

	def index 
		@boats = Boat.all
	end


	def new
		@boat = Boat.new
	end


	def create
		@boat = Boat.new(boat_params)
		# if @boat.save
		# 	redirect_to 
		# else
		# 	render
		# end
	end


	def show
		@boat = Boat.find(params[:id])
	end


	def edit

	end


	def update

	end


	def destroy

	end

	private 

	def boat_params
		params.require(:boat).permit(:boat_name, :capacity, :location)
	end

end
