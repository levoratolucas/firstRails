json.extract! user, :id, :name, :documentValue, :nasc, :created_at, :updated_at
json.url user_url(user, format: :json)
