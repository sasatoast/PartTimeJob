class ReviewsController < ApplicationController
  def index
    reviews = ReviewUseCase.list_reviews(params[:job_id])
    render json: reviews
  end

  def create
    review = ReviewUseCase.create_review(review_params)
    if review
      render json: review, status: :created
    else
      render json: review.errors, status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(:job_id, :user_id, :rating_overall, :rating_workload, :rating_flexibility, :comment)
  end
end
