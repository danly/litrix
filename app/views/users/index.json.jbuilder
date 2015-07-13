json.array!(@users) do |user|
  json.extract! user, :id, :username, :first_name, :last_name, :gender, :country, :password_digest, :email, :birthdate, :age
  json.url user_url(user, format: :json)
end
