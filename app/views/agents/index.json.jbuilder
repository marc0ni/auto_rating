json.array!(@agents) do |agent|
  json.extract! agent, :id, :contact, :name, :address, :city, :state, :zip, :account_id, :submission_id, :proposal_id, :policy, :references
  json.url agent_url(agent, format: :json)
end
