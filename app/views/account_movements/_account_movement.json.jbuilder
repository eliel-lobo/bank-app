json.extract! account_movement, :id, :account_id, :value, :type, :origin, :created_at, :updated_at
json.url account_movement_url(account_movement, format: :json)
