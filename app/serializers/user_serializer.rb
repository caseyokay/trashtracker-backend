class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email
  has_many :trash_items
  has_many :trash_categorys, through: :trash_items

end
