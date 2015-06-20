class Attendance < ActiveRecord::Base

  def user
    User.find(self.user_id)
  end

belongs_to :event

end
