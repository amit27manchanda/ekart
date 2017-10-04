class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.string :address1
      t.string :adddress2
      t.string :state
      t.string :city
      t.integer :pincode
      t.integer :user_id

      t.timestamps
    end
  end
end
