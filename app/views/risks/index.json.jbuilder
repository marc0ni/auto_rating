json.array!(@risks) do |risk|
  json.extract! risk, :id, :risk, :premium, :deductible, :limit, :submission_id, :limits_id, :deductibles_id, :details_id
  json.url risk_url(risk, format: :json)
end
