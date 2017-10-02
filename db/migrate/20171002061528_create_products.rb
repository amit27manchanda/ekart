class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price
      t.text :string
      t.string :category
      t.integer :stock
      t.timestamps
    end
  end
end
