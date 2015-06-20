json.array!(@attendaces) do |attendace|
  json.extract! attendace, :id, :user_uid, :user_id, :event_id
  json.url attendace_url(attendace, format: :json)
end
