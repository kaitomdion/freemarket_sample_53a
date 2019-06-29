class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name, null: false
      t.text :description, null: false
      t.string :price, null: false
      t.references :shipping_region, null: false, foreign_key: true
      t.references :shipping_method, null: false, foreign_key: true
      t.references :shipping_status, null: false, foreign_key: true
      t.references :shipping_day, null: false, foreign_key: true
      t.references :shipping_burden, null: false, foreign_key: true
      t.integer :buyer_id, null: false, foreign_key: true
      t.integer :saler_id, null: false, foreign_key: true
      t.references :transaction, null: false, foreign_key: true
      t.timestamps
      t.timestamps
    end
  end
end
