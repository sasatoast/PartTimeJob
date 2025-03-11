class AddQuestionIdAndUserIdToAnswers < ActiveRecord::Migration[7.2]
  def change
    add_column :answers, :question_id, :bigint
    add_column :answers, :user_id, :bigint
  end
end
