json.array!(@items) do |item|
  json.extract! item, :id, :item_type_id, :value
  json.url item_url(item, format: :json)
end
