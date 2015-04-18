class Restaurant < ActiveRecord::Base
  belongs_to :category
  belongs_to :restaurateur
  has_many :bookings, dependent: :destroy
  validates :restaurateur_id, presence: true
  validates :category_id, presence: true

  geocoded_by :address
  after_validation :geocode, :if => :address_changed?

  mount_uploader :restaurant_image, RestaurantImageUploader

  def restaurateur?
    if current_user.restaurateur
      true
    else
      false
    end
  end


end
