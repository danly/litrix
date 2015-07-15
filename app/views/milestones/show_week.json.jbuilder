json.array!(@milestones) do |milestone|
  json.extract! milestone, :id, :title, :note, :year, :week, :user_id
  json.url milestone_url(milestone, format: :json)
end
