class CreateAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table :addresses do |t|
      t.string :house_no
      t.string :street
      t.string :city
      t.string :state 
      t.string :pincode
      t.string :country
      t.string :landmark
      
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
