class CreateJobs < ActiveRecord::Migration[7.2]
  def change
    create_table :jobs do |t|
      t.string :name, null: false
      t.string :location, null: false
      t.float :latitude, null: false
      t.float :longitude, null: false
      t.integer :wage, null: false
      t.time :working_time_start, null: false
      t.time :working_time_end, null: false
      t.timestamps
    end
  end
end
