json.array!(@courses) do |course|
  json.extract! course, :id, :name, :description, :image, :user_id
  json.url course_url(course, format: :json)
end
