class FeedbackSerializer < ActiveModel::Serializer
  attributes :id, :customer_id, :runner_id, :rating, :content, :request_id
end
