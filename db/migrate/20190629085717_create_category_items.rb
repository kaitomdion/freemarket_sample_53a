class CreateCategoryItems < ActiveRecord::Migration[5.2]
  def change
    create_table :category_items do |t|
      t.references :category
      t.references :item
      t.timestamps
    end
  end
end
