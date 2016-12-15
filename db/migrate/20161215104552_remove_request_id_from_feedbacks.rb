class RemoveRequestIdFromFeedbacks < ActiveRecord::Migration[5.0]
  def change
    remove_column :feedbacks, :request_id, :integer
  end
end
