json.array!(@brains) do |brain|
  json.extract! brain, :id, :zombie_id, :status, :flavor
  json.url brain_url(brain, format: :json)
end
