json.array!(@accounts) do |account|
  json.extract! account, :id, :name, :address, :city, :state, :zip, :agent_id, :submission_id, :proposal_id, :policy_id
  json.url account_url(account, format: :json)
end
