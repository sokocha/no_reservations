class RemoveTheDateFromBookings < ActiveRecord::Migration
  def change
    remove_column :bookings, :the_date, :text
  end
end
