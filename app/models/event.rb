class Event < ActiveRecord::Base
validates :title, {presence: true}
validates :creator_id, {numericality: true}

def public_event
  public_events = []


end

def user
  User.find(self.creator_id)
end
has_many :attendances
has_many :comments

end
