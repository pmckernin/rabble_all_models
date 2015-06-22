# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Attendance.destroy_all
attendances_seeds = [
{
  user_uid: "12341234",
  user_id: "3",
  event_id: "2"
  },
{user_uid: "12345678",
  user_id: "4",
  event_id: "2"}]

  attendances_seeds.each do |att|
    Attendance.create!(att)
  end

AccecptedFriend.destroy_all
  friend_seeds =[
    {user_id_1: "869449130496",
      user_id_2: "12341234"
      },
       {user_id_1: "869449130496",
      user_id_2: "12345678"
      }
    ]

    friend_seeds.each do |friendship|
    AccecptedFriend.create!(friendship)
  end

