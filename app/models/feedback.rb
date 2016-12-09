class Feedback < ApplicationRecord
  belongs_to :runner, class_name: "User", foreign_key: "runner_id"
  belongs_to :customer, class_name: "User", foreign_key: "customer_id"
end
