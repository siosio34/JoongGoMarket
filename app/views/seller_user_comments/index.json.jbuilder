json.array!(@seller_user_comments) do |seller_user_comment|
  json.extract! seller_user_comment, :id
  json.url seller_user_comment_url(seller_user_comment, format: :json)
end
