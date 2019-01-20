class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.text :name
      t.text :description
      t.text :price
      t.text :image
      t.boolean :sold
      t.integer :seller_id
      t.integer :buyer_id

      t.timestamps
    end
  end
end
