class AnswerRepository
  def self.create(params)
    Answer.create(params)
  end

  def self.find_by_id(id)
    answer = Answer.find_by(id: id)
    answer ? AnswerEntity.new(**answer.attributes.symbolize_keys) : nil
  end

  def self.find_by_question_id(question_id)
    Answer.where(question_id: question_id).map { |answer| AnswerEntity.new(**answer.attributes.symbolize_keys) }
  end
end