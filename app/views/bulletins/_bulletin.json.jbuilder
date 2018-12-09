json.extract! bulletin, :id, :topic, :date, :content, :created_at, :updated_at
json.url bulletin_url(bulletin, format: :json)
