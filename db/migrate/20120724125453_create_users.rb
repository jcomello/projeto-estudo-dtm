class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :adress
      t.text :comment

      t.timestamps
    end
  end
end
