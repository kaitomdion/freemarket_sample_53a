class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.integer :price
      t.references :shipping_region
      t.references :shipping_method
      t.references :shipping_status
      t.references :shipping_day
      t.references :shipping_burden
      t.integer :buyer_id
      t.integer :saler_id
      t.references :item_status
      t.timestamps
      t.references :category
    end
  end
end
