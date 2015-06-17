class Comment < ActiveRecord::Base

 validates :contents, {presence: true}
 validates :user_id, :event_id, {numericality: true, allow_blank: false}

  belongs_to :user
  belongs_to :event

end
