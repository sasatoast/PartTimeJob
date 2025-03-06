class CreateJobStudents < ActiveRecord::Migration[7.2]
  def change
    create_table :job_students do |t|
      t.string :university
      t.string :faculty
      t.integer :student_count
      
      t.timestamps
    end
  end
end
