json.extract! user, :id, :name, :document_number, :email, :created_at, :updated_at
json.url user_url(user, format: :json)
