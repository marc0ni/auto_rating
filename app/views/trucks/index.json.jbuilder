json.array!(@trucks) do |truck|
  json.extract! truck, :id, :type, :territory, :business_use, :fleet_nonfleet, :make, :year, :cost_new, :age_group, :size_class, :gvw, :gcw
  json.url truck_url(truck, format: :json)
end
