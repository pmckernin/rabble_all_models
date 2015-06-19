class StalkersController < ApplicationController

def index
  @events = Event.all
  @attendance = Attendance.new
  @comment = Comment.new
end

end
