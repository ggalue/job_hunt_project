class JobController < ApplicationController
  def index
  	if params[:q].present?
			@jobs = IndeedAPI.search_jobs(q: params[:q])
			@results = @jobs.results
		elsif params[:l].present?
			@jobs = IndeedAPI.search_jobs(l: params[:l])
			@results = @jobs.results
		else
			@jobs = []
			@results = []
		end

		@job_type = %w(Full-time Part-time Contract Internship Temporary)
		@job_type.sort!
	end 

	def create
		job = Job.new 
		job.job_title = params[:q]
		job.company = params[:as_cmp]
		job.location = params[:l]
		job.description = params[:s]
		job.url = params[:url]
		job.date = params[:date]
		job.user_id = current_user.id
		job.save

		redirect_to dashboard_path
  end

  def dashboard
  	@my_jobs = Job.where(user_id: current_user.id)
  end 

  def show
  	@job = Job.find(params[:id])
  	@note = Note.new
  end 

  def destroy
  	@job = Job.find(params[:id])
    @job.destroy
    redirect_to dashboard_path, notice: 'Job was successfully destroyed.'
  end

end
