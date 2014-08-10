json.array!(@policies) do |policy|
  json.extract! policy, :id, :policy_no, :deductibles_id, :limits_id, :premia_id, :submission_id, :proposal_id
  json.url policy_url(policy, format: :json)
end
