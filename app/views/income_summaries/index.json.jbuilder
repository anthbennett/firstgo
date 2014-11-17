json.array!(@income_summaries) do |income_summary|
  json.extract! income_summary, :id, :trust, :individual, :company
  json.url income_summary_url(income_summary, format: :json)
end
