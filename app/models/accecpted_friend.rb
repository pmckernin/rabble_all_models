class AccecptedFriend < ActiveRecord::Base

def user
User.where("uid == #{self.user_id_1} OR uid ==#{self.user_id_2}")
end



def attending

  Attendance.where("user_uid == #{user_id_1} OR user_uid ==#{user_id_2}")

end

end
