class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :product_name
      t.integer :price
      t.string :description
      t.string :seller

      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
