class AddEmailToJobs < ActiveRecord::Migration[7.2]
  def change
    add_column :jobs, :email, :string
    add_index :jobs, :email, unique: true
  end
end
