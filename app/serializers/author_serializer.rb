class AuthorSerializer < ActiveModel::Serializer
  attributes :id, :name, :bio, :avatar, :academics, :awards
  has_one :user
end
