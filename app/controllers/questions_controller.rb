class QuestionsController < ApplicationController
  def index
    questions = QuestionUseCase.list_questions(params[:job_id])
    render json: questions
  end

  def create
    question = QuestionUseCase.create_question(question_params)
    if question
      render json: question, status: :created
    else
      render json: question.errors, status: :unprocessable_entity
    end
  end

  private

  def question_params
    params.require(:question).permit(:job_id, :user_id, :content)
  end
end
