json.array!(@cookies) do |cooky|
  json.extract! cooky, :id, :name, :description, :on_sale, :price
  json.url cooky_url(cooky, format: :json)
end
