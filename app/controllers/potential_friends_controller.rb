class PotentialFriendsController < ApplicationController
   before_action :set_potential_friend, only: [:show, :edit, :update, :destroy]

def index
  @user = User.all
@friend_request = FriendRequest.new
 if user_signed_in?
      Koala.config.api_version = 'v2.0'
    @graph = Koala::Facebook::API.new(session["token"])
    @friends = @graph.get_connections("me", "friends")
    end
end

end
