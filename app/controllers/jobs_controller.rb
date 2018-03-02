class JobsController < ApplicationController

	def assign

	end


	def index
	
	@jobs = Job.all
	@job = Job.new
	end


	def new
 	@job = Job.new
	end


	def create 
	@job = Job.new(job_params)
	if @job.save
	redirect_to '/jobs'
	end
	end


	def show
	@job = Job.find(params[:id])
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
