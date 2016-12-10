class Request < ApplicationRecord
  belongs_to :runner, class_name: "User", foreign_key: "runner_id", optional: true
  belongs_to :customer, class_name: "User", foreign_key: "customer_id"
end
