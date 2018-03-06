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
	job = current_client.jobs.build(job_params)
	if job.save
	flash[:alert] = "Job was created successfully!"	
	redirect_to '/jobs'
else 
	redirect_to '/jobs'
	flash[:alert] = "Job was not created. Try again!"
	end
	end


	def show
	end


	def edit
	@job = Job.find(params[:id])
	end


	def update
	@job = Job.find(params[:id])
	if @job.update(job_params)
		redirect_to '/jobs'
	else 
		redirect_to "/jobs/#{@job.id}/edit"
	end
end

	def destroy
	@job = Job.find(params[:id])
	@job.delete
	redirect_to '/jobs'
		
	end

	def assign
		@boat = Boat.find(params[:id])
		@job = Job.find(params[:jobid])
		@boat.jobs << @job
		redirect_to "/boats/#{@boat.id}"
	end

def job_params
  
params.require(:job).permit(:client_id, :cargo_name, :cargo_description, :cost, :amount_of_c, :origin, :destination)
end

end
