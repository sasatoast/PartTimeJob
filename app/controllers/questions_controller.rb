class QuestionsController < ApplicationController
  def index
    reviews = Review.where(job_id: params[:job_id])
    render json: reviews
  end 

  def create
    question=Question.new.params(question_params)
    if question.save
      render json: question, status: :created
    else 
      render json: question.error, status: :unprocessable_entity
    end
  end

  private
  def question_params
    params.require(:question).permit(:job_id, :user_id, :content)
  end
end
