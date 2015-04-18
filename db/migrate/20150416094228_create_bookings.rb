class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.text :description
      t.integer :restaurant_id
      t.date :date
      t.time :starttime
      t.time :endtime
      t.integer :party
      t.string :status

      t.timestamps null: false
    end
  end
end
