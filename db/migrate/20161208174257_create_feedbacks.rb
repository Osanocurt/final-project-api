class CreateFeedbacks < ActiveRecord::Migration[5.0]
  def change
    create_table :feedbacks do |t|
      t.integer :customer_id
      t.integer :runner_id
      t.float :rating
      t.text :content
      t.string :date

      t.timestamps
    end
  end
end
