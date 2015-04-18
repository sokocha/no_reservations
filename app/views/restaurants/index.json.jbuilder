json.array!(@restaurants) do |restaurant|
  json.extract! restaurant, :id, :name, :description, :address, :latitude, :longitude, :image, :category_id, :restaurateur_id
  json.url restaurant_url(restaurant, format: :json)
end
