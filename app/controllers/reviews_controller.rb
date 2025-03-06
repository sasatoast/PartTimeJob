class ReviewsController < ApplicationController
  def index
    reviews=Review.where(job_id: params[:job_id])
    render json: reviews
  end

  def create
    review=Review.new(review_params)
    if review.save
      render json:review,status: :created
    else
      render json: review.errors, status: :unprocessable_entity
    end
  end

  def review_params
    params.require(:review).permit(:job_id, :user_id, :rating_overall, :rating_workload, :rating_flexibility, :comment)
  end
end
