class QuestionRepository
  def self.find_by_job_id(job_id)
    Question.where(job_id: job_id).map { |question| QuestionEntity.new(question.attributes.symbolize_keys) }
  end

  def self.find_by_id(id)
    question = Question.find_by(id: id)
    question ? QuestionEntity.new(**question.attributes.symbolize_keys) : nil
  end

  def self.create(params)
    question=Question.create(params)
    QuestionEntity.new(**question.attributes.symbolize_keys) if question.perisisted?
  end
end