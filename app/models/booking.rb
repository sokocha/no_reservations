class Booking < ActiveRecord::Base
  belongs_to :user
  belongs_to :restaurant
  validates :user_id, presence: true
  validates :restaurant_id, presence: true
  validates :party, presence: true
  validates_numericality_of :party, greater_than: 0, message: "size must be at least 1"
  validates_numericality_of :party, less_than: 8, message: "size must be less than or equal to 7"

end
