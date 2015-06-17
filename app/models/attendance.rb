class Attendance < ActiveRecord::Base


 validates :user_id, :event_id, {numericality: true, allow_blank: false}



  belongs_to :user
  belongs_to :event
end
