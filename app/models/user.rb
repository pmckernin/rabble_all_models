
  class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable, :omniauth_providers => [:facebook]


  def self.from_omniauth(auth)

  where(provider: auth.provider, uid: auth.uid).first_or_create do |user|

    user.email = auth.info.email
    user.password = Devise.friendly_token[0,20]
    user.first = auth.info.first_name
    user.last = auth.info.last_name
    user.sex = auth.extra.raw_info.gender
    user.uid = auth.uid
  end
end

  def accecpted_friends
   AccecptedFriend.where("user_id_1 == #{self.uid} OR user_id_2 ==#{self.uid}")
  end

  def what_friends_are_doing
    friends_attending=[]
    events_being_attended=[]
    events_to_ignore=[]
    friends =   AccecptedFriend.where("user_id_1 == #{self.uid} OR user_id_2 ==#{self.uid}")
    friends.each do |friend|
      going = Attendance.where("user_uid == #{friend.user_id_1} OR user_uid ==#{friend.user_id_2}")
      friends_attending << going

    end
    friends_attending.each do |event|
      unless events_to_ignore.include?(event.first.event_id)

        friend_at_event = Event.where(:id => event.first.event_id)
        events_being_attended << friend_at_event
        events_to_ignore << event.first.event_id
      end
    end
    return events_being_attended
  end

 def events_friends_created
    events =[]

    friends =   AccecptedFriend.where("user_id_1 == #{self.uid} OR user_id_2 ==#{self.uid}")
    friends.each do |creator|

      friend_event = Event.where("user_uid == #{creator.user_id_1} OR user_uid ==#{creator.user_id_2}")

      events  << friend_event
    end
return events

  end



  has_many :attendances
  has_many :comments
end
