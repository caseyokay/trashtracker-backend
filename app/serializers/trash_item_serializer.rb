class TrashItemSerializer < ActiveModel::Serializer
  attributes :id, :description, :date, :image, :trash_category, :user
  # has_many :trash_category

end
