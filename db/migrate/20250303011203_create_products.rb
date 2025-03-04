class CreateProducts < ActiveRecord::Migration[7.2]
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.decimal :price
      t.integer :stock
      t.string :sku
      t.string :image_url

      t.timestamps
    end
  end
end
