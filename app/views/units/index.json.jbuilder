json.array!(@units) do |unit|
  json.extract! unit, :id, :name, :pdf, :youtube_url, :rich_text, :video, :course_id
  json.url unit_url(unit, format: :json)
end
