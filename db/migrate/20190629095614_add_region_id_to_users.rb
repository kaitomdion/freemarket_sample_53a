class AddRegionIdToUsers < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :shipping_region, foreign_key: true
  end
end
