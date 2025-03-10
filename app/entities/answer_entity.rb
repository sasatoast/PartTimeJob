# app/entities/answer_entity.rb
class AnswerEntity
  attr_reader :id, :question_id, :user_id, :content

  def initialize(id:, question_id:, user_id:, content:)
    @id = id
    @question_id = question_id
    @user_id = user_id
    @content = content
  end
end