class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      t.string :name
      t.references :product

      t.timestamps
    end
    add_index :carts, :product_id
  end
end
