json.array!(@sellers) do |seller|
  json.extract! seller, :id, :customer_id, :sellcount, :profit, :grade, :phonenumber, :intro, :bank, :banknumber
  json.url seller_url(seller, format: :json)
end
