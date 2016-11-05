json.extract! podcast, :id, :name, :imageurl, :rss, :color, :created_at, :updated_at
json.url podcast_url(podcast, format: :json)