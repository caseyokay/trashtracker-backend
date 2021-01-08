class TrashItemSerializer < ActiveModel::Serializer
  attributes :id, :description, :date, :image, :preset,:trash_category, :user
  # has_many :trash_category

end
