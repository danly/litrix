json.array!(@datasets) do |dataset|
  json.extract! dataset, :id, :title, :note, :year, :week, :user_id
  json.url dataset_url(dataset, format: :json)
end
