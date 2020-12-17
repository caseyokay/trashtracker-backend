class TrashItemSerializer < ActiveModel::Serializer
  attributes :id, :description, :date, :trash_category, :user
  # has_many :trash_category

end
