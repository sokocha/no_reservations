class RemoveDateFromBookings < ActiveRecord::Migration
  def change
    remove_column :bookings, :date, :date
  end
end
