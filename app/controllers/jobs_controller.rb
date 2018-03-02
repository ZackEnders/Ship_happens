class JobsController < ApplicationController

	def assign

	end


	def index
	
	@jobs = Job.all

	end


	def new
 
	end


	def create 
		
	end


	def show
	end


	def edit

	end


	def update

	end


	def destroy
		
	end

def job_params
  
params.require(:job).permit(:cargo_name, :cargo_description, :cost, :amount_of_c, :origin, :destination)
end

end
