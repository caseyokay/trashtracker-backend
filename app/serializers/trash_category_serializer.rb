class TrashCategorySerializer < ActiveModel::Serializer
  attributes :id, :kind, :image
  has_many :trash_items

end
