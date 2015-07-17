json.array!(@datasets) do |dataset|
  json.extract! dataset, :id, :title, :user_id
  json.url dataset_url(dataset, format: :json)
end
