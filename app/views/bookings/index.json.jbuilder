json.array!(@bookings) do |booking|
  json.extract! booking, :id, :description, :restaurant_id, :date, :starttime, :endtime, :party, :status
  json.url booking_url(booking, format: :json)
end
