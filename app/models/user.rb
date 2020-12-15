class User < ApplicationRecord
    has_many :trash_items, dependent: :destroy
    has_many :trash_categorys, through: :trash_items
end
