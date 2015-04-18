class Category < ActiveRecord::Base
  has_many :restaurants, dependent: :destroy





  def has_restaurants?
    restaurants.any?
  end


end
