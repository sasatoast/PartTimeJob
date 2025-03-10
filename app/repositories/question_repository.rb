# app/repositories/question_repository.rb
class QuestionRepository
  def self.find_by_job(job_id)
    Question.where(job_id: job_id)
  end

  def self.create(params)
    Question.create(params)
  end
end