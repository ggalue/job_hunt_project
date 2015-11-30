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

  def saved_jobs
  end 

end
