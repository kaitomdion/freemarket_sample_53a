class CreateShippingBurdens < ActiveRecord::Migration[5.2]
  def change
    create_table :shipping_burdens do |t|
      t.string :name, null: false
      t.timestamps
    end
  end
end
