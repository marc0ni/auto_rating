json.array!(@proposals) do |proposal|
  json.extract! proposal, :id, :proposal_no, :submission_id, :policy_id
  json.url proposal_url(proposal, format: :json)
end
