class FeedbackSerializer < ActiveModel::Serializer
  belongs_to :customer
  belongs_to :runner
  belongs_to :request
  attributes :id, :customer_id, :runner_id, :rating, :content, :request
end
