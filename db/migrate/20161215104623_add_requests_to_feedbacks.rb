class AddRequestsToFeedbacks < ActiveRecord::Migration[5.0]
  def change
    add_reference :feedbacks, :request, foreign_key: true
  end
end
