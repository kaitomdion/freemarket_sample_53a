class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.string :number, null: false, unique: true
      t.string :limit_month, null: false
      t.string :limit_year, null: false
      t.string :security_cord, null: false, unique: true
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
