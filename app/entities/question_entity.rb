# app/entities/question_entity.rb
class QuestionEntity
  attr_reader :id, :job_id, :user_id, :content

  def initialize(id:, job_id:, user_id:, content:)
    @id = id
    @job_id = job_id
    @user_id = user_id
    @content = content
  end
end