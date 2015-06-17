json.array!(@accecpted_friends) do |accecpted_friend|
  json.extract! accecpted_friend, :id, :user_id_1, :user_id_2
  json.url accecpted_friend_url(accecpted_friend, format: :json)
end
