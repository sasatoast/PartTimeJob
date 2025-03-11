class AnswerUseCase
  def self.create_answer(params)
    answer = AnswerRepository.create(params)
    AnswerEntity.new(answer.attributes.symbolize_keys) if answer.persisted?
  end

  def self.get_answer_detail(id)
    AnswerRepository.find_by_id(id)
  end

  def self.list_answers_for_question(question_id)
    AnswerRepository.find_by_question_id(question_id)
  end
end