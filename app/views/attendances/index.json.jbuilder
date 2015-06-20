json.array!(@attendances) do |attendance|
  json.extract! attendance, :id, :user_uid, :user_id, :event_id
  json.url attendance_url(attendance, format: :json)
end
