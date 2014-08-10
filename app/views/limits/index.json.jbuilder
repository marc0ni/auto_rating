json.array!(@limits) do |limit|
  json.extract! limit, :id, :partial, :bipd, :medical, :risk_id
  json.url limit_url(limit, format: :json)
end
