json.array!(@private_passengers) do |private_passenger|
  json.extract! private_passenger, :id, :territory, :age_group, :cost_new, :make, :model, :year
  json.url private_passenger_url(private_passenger, format: :json)
end
