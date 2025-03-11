class AddJobIdAndUserIdToQuestions < ActiveRecord::Migration[7.2]
  def change
    add_column :questions, :job_id, :integer
    add_index :questions, :job_id

    add_column :questions, :user_id, :integer
    add_index :questions, :user_id
  end
end
