class RemoveEndTimeFromBookings < ActiveRecord::Migration
  def change
    remove_column :bookings, :endtime, :time
  end
end
