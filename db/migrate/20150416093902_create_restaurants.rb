class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.text :description
      t.string :address
      t.float :latitude
      t.float :longitude
      t.string :image
      t.integer :category_id
      t.integer :restaurateur_id

      t.timestamps null: false
    end
  end
end
