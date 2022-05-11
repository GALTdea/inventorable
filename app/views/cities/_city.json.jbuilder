json.extract! city, :id, :name, :weather, :description, :created_at, :updated_at
json.url city_url(city, format: :json)
