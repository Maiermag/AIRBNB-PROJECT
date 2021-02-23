class CreateShoes < ActiveRecord::Migration[6.0]
  def change
    create_table :shoes do |t|
      t.string :name
      t.integer :price
      t.string :brand
      t.integer :size
      t.string :location
      t.integer :year

      t.timestamps
    end
  end
end
