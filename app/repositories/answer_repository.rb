# app/repositories/answer_repository.rb
class AnswerRepository
  def self.create(params)
    Answer.create(params)
  end
end