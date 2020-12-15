class CreateTrashCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :trash_categories do |t|
      t.string :kind
      t.string :image

      t.timestamps
    end
  end
end
