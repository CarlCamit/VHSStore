json.extract! video, :id, :name, :genre, :release_date, :classification, :description, :created_at, :updated_at
json.url video_url(video, format: :json)
