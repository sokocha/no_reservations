class AddDatesToBookings < ActiveRecord::Migration
  def change
    add_column :bookings, :date, :text, :null=> false
  end
end
