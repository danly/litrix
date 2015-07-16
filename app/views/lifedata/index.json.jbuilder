json.array!(@lifedata) do |lifedatum|
  json.extract! lifedatum, :id, :country, :gho, :gender, :age
  json.url lifedatum_url(lifedatum, format: :json)
end
