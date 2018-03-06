class JobsController < ApplicationController

	def assign

	end


	def index

	@jobs = Job.all
	@job = Job.new
	@client = Client.find(current_client.id)
	end


	def new
 	@job = Job.new
	end


	def create 
	@client = Client.find(current_client.id)
	@job = Job.new(params[:job_params])
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

	def assign
		@boat = Boat.find(params[:id])
		@job = Job.find(params[:jobid])
		@boat.jobs << @job
		redirect_to '/'
	end

def job_params

params.require(:job).permit(:client_id, :cargo_name, :cargo_description, :cost, :amount_of_c, :origin, :destination)
end

end
