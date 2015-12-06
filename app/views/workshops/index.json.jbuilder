json.array!(@workshops) do |workshop|
  json.extract! workshop, :id, :title, :content, :admin_id, :user_id
  json.url workshop_url(workshop, format: :json)
end
