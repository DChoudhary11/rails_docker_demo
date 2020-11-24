json.extract! user, :id, :first_name, :last_name, :string, :email, :age, :address, :created_at, :updated_at
json.url user_url(user, format: :json)
