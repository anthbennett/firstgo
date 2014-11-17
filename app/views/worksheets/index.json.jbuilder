json.array!(@worksheets) do |worksheet|
  json.extract! worksheet, :id, :interest, :rent, :account_fees
  json.url worksheet_url(worksheet, format: :json)
end
