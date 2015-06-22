# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user_info = [
  {
    first: "Brianna",
    last: "Woods",
    email: "brianna.woods19@example.com",
    password: "12341234",
    password_confirmation: "12341234",
    age: "23",
    sex: "female",
    uid: "12341234"
  },
  {
    first: "Jimmy",
    last: "Woods",
    email: "Jwoo@example.com",
    password: "12341234",
    password_confirmation: "12341234",
    age: "23",
    sex: "male",
    uid: "12345678"
  }

]

user_info.each do |user|
  User.create!(user)
end
puts "There are now #{User.count} users in the database."

attendances_seeds = [
{
  user_uid: "12341234",
  event_id: "2"
  },
{user_uid: "12345678",
  event_id: "2"}]

  attendances_seeds.each do |att|
    Attendace.create!(att)
  end

  friend_seeds =[
    {user_id_1: "869449130496",
      user_id_2: "12341234"
      },
       {user_id_1: "869449130496",
      user_id_2: "12345678"
      }
    ]

    attendances_seeds.each do |friendship|
    AccecptedFriend.create!(friendship)
  end

