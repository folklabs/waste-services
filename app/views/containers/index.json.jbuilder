json.array!(@containers) do |container|
  json.extract! container, :id, :color
  json.url container_url(container, format: :json)
end
