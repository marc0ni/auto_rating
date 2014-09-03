json.array!(@trailers) do |trailer|
  json.extract! trailer, :id, :type, :territory, :radius_class, :year, :cost_new, :age_group, :load_capacity
  json.url trailer_url(trailer, format: :json)
end
