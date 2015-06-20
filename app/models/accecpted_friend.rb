class AccecptedFriend < ActiveRecord::Base

def at_event
  Attendance.where("user_id == #{self.user_id_1} OR user_id ==#{self.user_id_2}")
end

end
