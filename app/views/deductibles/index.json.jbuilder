json.array!(@deductibles) do |deductible|
  json.extract! deductible, :id, :partial, :spec_causes, :comp, :coll, :risk_id
  json.url deductible_url(deductible, format: :json)
end
