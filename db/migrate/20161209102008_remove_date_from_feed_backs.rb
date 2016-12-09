class RemoveDateFromFeedBacks < ActiveRecord::Migration[5.0]
  def change
    remove_column :feedbacks, :date, :string
  end
end
