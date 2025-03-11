class AnswerRepository
  def self.create(params)
    answer = Answer.create(params)
    AnswerEntity.new(**answer.attributes.symbolize_keys) if answer.persisted?
  end

  def self.find_by_id(id)
    answer = Answer.find_by(id: id)
    answer ? AnswerEntity.new(**answer.attributes.symbolize_keys) : nil
  end

  def self.find_by_question_id(question_id)
    Answer.where(question_id: question_id).map { |answer| AnswerEntity.new(**answer.attributes.symbolize_keys) }
  end
end