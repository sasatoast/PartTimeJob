class CreateReviews < ActiveRecord::Migration[7.2]
  def change
    create_table :reviews do |t|
      t.integer :rating_overall
      t.integer :rating_workload
      t.integer :rating_flexibility
      t.string :comment
      
      t.timestamps
    end
  end
end
