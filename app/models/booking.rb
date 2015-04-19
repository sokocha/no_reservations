class Booking < ActiveRecord::Base
  belongs_to :user
  belongs_to :restaurant
  validates :user_id, presence: true
  validates :restaurant_id, presence: true
  validates :party, presence: true
end
