class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :photo, :full_name, :address, :user_type, :jobs
  def photo
    object.photo.url
  end
end
