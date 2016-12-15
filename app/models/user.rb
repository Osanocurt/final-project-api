class User < ApplicationRecord
  has_secure_password
  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :user_type, presence: true
  validates :password_confirmation, presence: true, on: :create
  has_many :jobs, class_name: "Request", foreign_key: "runner_id"
  has_many :requests, class_name: "Request", foreign_key: "customer_id"

  mount_uploader :photo, ImageUploader
end
