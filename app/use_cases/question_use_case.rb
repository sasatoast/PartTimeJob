# app/use_cases/question_use_case.rb
class QuestionUseCase
  def self.list_questions(job_id)
    Question.where(job_id: job_id)
  end

  def self.create_question(params)
    Question.create(params)
  end
end
