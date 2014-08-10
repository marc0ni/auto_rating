json.array!(@submissions) do |submission|
  json.extract! submission, :id, :sub_no, :eff_date, :exp_date, :agent_id, :account_id, :policy_id, :proposal_id, :risk_id
  json.url submission_url(submission, format: :json)
end
