json.array!(@entities) do |entity|
  json.extract! entity, :id, :name, :tfn, :abn, :address, :phone_number
  json.url entity_url(entity, format: :json)
end
