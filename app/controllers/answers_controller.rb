class AnswersController < ApplicationController
  def create
    answer = AnswerUseCase.create_answer(answer_params)
    if answer
      render json: answer, status: :created
    else
      render json: answer.errors, status: :unprocessable_entity
    end
  end

  private

  def answer_params
    params.require(:answer).permit(:question_id, :user_id, :content)
  end
end
