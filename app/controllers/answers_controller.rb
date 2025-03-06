class AnswersController < ApplicationController
  def create
    answer=Answer.new(answer_params)
    if answer.save
      render json: answer,status: :created
    else
      render json: answer.error,status: :unprocessable_entity
    end
  end

  private
  def answer_params
    params.require(:answer).permit(:question_id, :user_id, :content)
  end
end
