class Category < ActiveRecord::Base
  has_many :restaurants, dependent: :destroy

  mount_uploader :category_image, CategoryImageUploader




  def has_restaurants?
    restaurants.any?
  end


end
