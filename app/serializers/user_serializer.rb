class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :requests
end
