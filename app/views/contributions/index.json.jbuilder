json.array!(@contributions) do |contribution|
  json.extract! contribution, :id, :user_id, :workshop_id, :title, :content
  json.url contribution_url(contribution, format: :json)
end
