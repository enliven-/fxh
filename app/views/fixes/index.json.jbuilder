json.array!(@fixes) do |fix|
  json.extract! fix, :id, :customer_id, :address_id, :category_id
  json.url fix_url(fix, format: :json)
end
