class CreateShippingStatuses < ActiveRecord::Migration[5.2]
  def change
    create_table :shipping_statuses do |t|
      t.integer :name, null: false
      t.timestamps
    end
  end
end
