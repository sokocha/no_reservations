class AddDateFieldToBookings < ActiveRecord::Migration
  def change
    add_column :bookings, :the_date, :text
  end
end
