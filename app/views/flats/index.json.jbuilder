json.array!(@flats) do |flat|
  json.extract! flat, :id, :title, :description, :address, :day-price
  json.url flat_url(flat, format: :json)
end
