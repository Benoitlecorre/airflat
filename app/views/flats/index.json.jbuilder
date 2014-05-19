json.array!(@flats) do |flat|
  json.extract! flat, :id, :title, :description, :address, :dayprice
  json.url flat_url(flat, format: :json)
end
