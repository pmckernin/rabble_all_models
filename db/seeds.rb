User.destroy_all

AccecptedFriend.destroy_all
AccecptedFriend.create!([
  {user_id_1: "869449130496", user_id_2: "12341234", user_uid: nil},
  {user_id_1: "869449130496", user_id_2: "12345678", user_uid: nil},
  {user_id_1: "869449130496", user_id_2: "10154889732598647", user_uid: nil}
])

Attendance.destroy_all
Attendance.create!([
  {user_uid: "12341234", user_id: "3", event_id: "2"},
  {user_uid: "12345678", user_id: "4", event_id: "2"},
  {user_uid: "869449130496", user_id: "1", event_id: "2"}
])

Comment.destroy_all
Comment.create!([
  {contents: "test", user_id: 1, event_id: 1}
])

Event.destroy_all
Event.create!([
  {title: "test", description: "", start_date: "2015-06-20 19:09:00", end_date: "2015-06-20 19:09:00", public: false, creator_id: 1, user_uid: nil},
  {title: "test 2", description: "", start_date: "2015-06-20 20:40:00", end_date: "2015-06-20 20:40:00", public: true, creator_id: 1, user_uid: nil},
  {title: "test 3", description: "", start_date: "2015-06-22 18:05:00", end_date: "2015-06-22 18:05:00", public: false, creator_id: 1, user_uid: nil},
  {title: "Drinks at the bars ", description: "shots ", start_date: "2015-06-22 10:05:00", end_date: "2015-06-22 18:05:00", public: true, creator_id: 1, user_uid: nil},
  {title: "haning at blaines ", description: "hang out ", start_date: "2015-06-23 01:11:00", end_date: "2015-06-23 01:11:00", public: false, creator_id: 1, user_uid: nil},
  {title: "test 4 ", description: "", start_date: "2015-06-23 15:20:00", end_date: "2015-06-23 15:20:00", public: nil, creator_id: 1, user_uid: nil},
  {title: "test 6", description: "", start_date: "2015-06-24 15:49:00", end_date: "2015-06-24 15:49:00", public: nil, creator_id: 1, user_uid: "869449130496"},
  {title: "test 8", description: "", start_date: "2015-06-23 21:39:00", end_date: "2015-06-23 21:39:00", public: nil, creator_id: 1, user_uid: "869449130496"},
  {title: "test 9", description: "", start_date: "2015-06-23 21:39:00", end_date: "2015-06-23 21:39:00", public: nil, creator_id: 1, user_uid: "869449130496"},
  {title: "test 10", description: "", start_date: "2015-06-25 01:41:00", end_date: "2015-06-25 01:41:00", public: nil, creator_id: 1, user_uid: "869449130496"},
  {title: "test 112", description: "this is an event ", start_date: "2015-06-23 01:50:00", end_date: "2015-06-23 01:50:00", public: nil, creator_id: 1, user_uid: "869449130496"}
])

FriendRequest.destroy_all
FriendRequest.create!([
  {user_id_1: "869449130496", user_id_2: "10154889732598647"},
  {user_id_1: "869449130496", user_id_2: "10154889732598647"},
  {user_id_1: "869449130496", user_id_2: "10154889732598647"},
  {user_id_1: "869449130496", user_id_2: "10154889732598647"}
])
