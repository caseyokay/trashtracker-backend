class TrashItem < ApplicationRecord
  belongs_to :user
  belongs_to :trash_category
end
