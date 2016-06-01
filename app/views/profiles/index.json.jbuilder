json.array!(@profiles) do |profile|
  json.extract! profile, :id, :name, :address, :dob, :mob, :image, :user_id
  json.url profile_url(profile, format: :json)
end
