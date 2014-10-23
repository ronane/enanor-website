json.array!(@experiences) do |experience|
  json.extract! experience, :id, :title, :place, :date, :notes
  json.url experience_url(experience, format: :json)
end
