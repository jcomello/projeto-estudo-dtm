class AddPayedToCarts < ActiveRecord::Migration
  def change
    add_column :carts, :payed, :boolean, :default => true
  end
end
