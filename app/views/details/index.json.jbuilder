json.array!(@details) do |detail|
  json.extract! detail, :id, :partial, :make, :model, :year, :cost_new, :age_group, :territory, :size_class, :load_capacity, :fleet_nonfleet, :spec_causes, :gvw, :gcw, :business_use, :radius_class, :risk_id
  json.url detail_url(detail, format: :json)
end
