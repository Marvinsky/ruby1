json.array!(@logins) do |login|
  json.extract! login, :id, :username, :email, :crypted_password, :salt
  json.url login_url(login, format: :json)
end
