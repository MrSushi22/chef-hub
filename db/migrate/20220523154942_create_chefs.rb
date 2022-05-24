class CreateChefs < ActiveRecord::Migration[6.1]
  def change
    create_table :chefs do |t|
      t.string :nickname
      t.string :cuisine
      t.text :description
      t.string :location
      t.integer :price
      t.references :user

      t.timestamps
    end
  end
end
