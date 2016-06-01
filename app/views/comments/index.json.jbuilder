json.array!(@comments) do |comment|
  json.extract! comment, :id, :description, :attachment, :user_id, :question_id
  json.url comment_url(comment, format: :json)
end
