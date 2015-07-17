json.array!(@title_params) do |title_param|
  json.extract! title_param, :id, :itemTitle, :note, :date, :dataset_id
  json.url dataset_url(title_param, format: :json)
end
