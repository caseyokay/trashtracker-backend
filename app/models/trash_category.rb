class TrashCategory < ApplicationRecord
    has_many :trash_items, dependent: :destroy
    has_many :users, through: :trash_items
end
