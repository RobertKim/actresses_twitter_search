json.array!(@actresses) do |actress|
  json.extract! actress, :id, :actress, :twitter_url
  json.url actress_url(actress, format: :json)
end
