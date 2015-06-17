json.array!(@friend_requests) do |friend_request|
  json.extract! friend_request, :id, :user_id_1, :user_id_2
  json.url friend_request_url(friend_request, format: :json)
end
