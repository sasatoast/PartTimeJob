# app/controllers/jobs_controller.rb
class JobsController < ApplicationController
  def index
    jobs = JobUseCase.list_jobs
    render json: jobs
  end

  def show
    job = JobUseCase.get_job_detail(params[:id])
    if job
      render json: job
    else
      render json: { error: "Job not found" }, status: :not_found
    end
  end

  def create
    job = JobUseCase.create_job(job_params)
    if job
      render json: job, status: :created
    else
      render json: job.errors, status: :unprocessable_entity
    end
  end

  private

  def job_params
    params.require(:job).permit(:name, :location, :latitude, :longitude, :wage, :working_time_start, :working_time_end)
  end
end
