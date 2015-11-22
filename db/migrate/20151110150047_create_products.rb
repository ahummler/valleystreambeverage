class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.integer :quantity
      t.decimal :price
      t.string :brand
      t.string :code

      t.timestamps null: false
    end
  end
end
