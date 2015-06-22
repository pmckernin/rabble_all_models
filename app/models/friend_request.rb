class FriendRequest < ActiveRecord::Base

def already_friends
  AccecptedFriend.where("user_id_1 == #{self.user_id_1} OR user_id_2 ==#{self.user_id_2} AND user_id_1 == #{self.user_id_2} OR user_id_2 ==#{self.user_id_1}")
end

def user
User.where("uid == #{self.user_id_1} OR uid ==#{self.user_id_2}")
end

def to_friend
  User.where("uid == #{self.user_id_2}")

end
end
