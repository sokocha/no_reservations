class AddUserIdToBookings < ActiveRecord::Migration
  def change
    add_column :bookings, :user_id, :integer, :null => false
  end
end
