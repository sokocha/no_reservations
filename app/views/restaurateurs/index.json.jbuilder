json.array!(@restaurateurs) do |restaurateur|
  json.extract! restaurateur, :id, :user_id, :active
  json.url restaurateur_url(restaurateur, format: :json)
end
