json.array!(@product_comments) do |product_comment|
  json.extract! product_comment, :id
  json.url product_comment_url(product_comment, format: :json)
end
