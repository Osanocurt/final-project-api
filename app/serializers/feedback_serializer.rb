class FeedbackSerializer < ActiveModel::Serializer
  belongs_to :customer
  belongs_to :runner
  attributes :id, :customer_id, :runner_id, :rating, :content, :request_id
end
