class BoatsController < ApplicationController


	def index 

		@boats = Boat.all

		@boat = Boat.new
	end


	def new
		@boat = Boat.new
	end

#Allows user to create a new boat with the form on the boats index page. 
	def create
		boat = current_client.boats.build(boat_params)
		if boat.save
			flash[:alert] = "Boat was created successfully!"
			redirect_to '/boats'
		else
			flash[:alert] = "pick a new name"
			redirect_to boats_path
		end
	end


	def show
		@boat = Boat.find(params[:id])
		@jobs = Job.all
	end


	def edit

	end


	def update

	end


	def destroy

		boat = Boat.find(params[:id])
    	#if blog destroy is successful then it alerts the user that it was deleted
    		if boat.destroy
      			flash[:alert] = "You have destroyed your ship!"
      			redirect_to boats_path
    		else
      			flash[:alert] = "Your ship sails on "
      			render boats_path
			end

	end

	private 

	def boat_params
		params.require(:boat).permit(:boat_name, :capacity, :location, :image, :image_file_size, :client_id)
	end

end
