class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.text :url 
      t.references :item 
      t.references :user
      t.timestamps
    end
  end
end
