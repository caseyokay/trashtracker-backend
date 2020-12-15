class CreateTrashItems < ActiveRecord::Migration[6.0]
  def change
    create_table :trash_items do |t|
      t.string :description
      t.string :date
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :trash_category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
