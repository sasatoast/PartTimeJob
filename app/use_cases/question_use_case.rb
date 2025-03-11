class QuestionUseCase
  def self.list_questions(job_id)
    QuestionRepository.find_by_job(job_id)
  end

  def self.get_question_detail(id)
    QuestionRepository.find_by_id(id)
  end

  def self.create_question(params)
    QuestionRepository.create(params)
  end
end