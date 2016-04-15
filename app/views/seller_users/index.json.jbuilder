json.array!(@seller_users) do |seller_user|
  json.extract! seller_user, :id
  json.url seller_user_url(seller_user, format: :json)
end
