class TrashItemSerializer < ActiveModel::Serializer
  attributes :id, :description, :date, :trash_category
  has_many :trash_categories

end
