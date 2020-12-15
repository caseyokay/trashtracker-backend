class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email
  has_many :trash_items
end
