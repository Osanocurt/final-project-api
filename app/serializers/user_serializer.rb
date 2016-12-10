class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :photo, :full_name, :address, :user_type
end
