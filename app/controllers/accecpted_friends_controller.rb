class AccecptedFriendsController < ApplicationController
  before_action :set_accecpted_friend, only: [:show, :edit, :update, :destroy]

  # GET /accecpted_friends
  # GET /accecpted_friends.json
  def index
    @accecpted_friends = AccecptedFriend.all
  end

  # GET /accecpted_friends/1
  # GET /accecpted_friends/1.json
  def show
  end

  # GET /accecpted_friends/new
  def new
    @accecpted_friend = AccecptedFriend.new
  end

  # GET /accecpted_friends/1/edit
  def edit
  end

  # POST /accecpted_friends
  # POST /accecpted_friends.json
  def create
    @accecpted_friend = AccecptedFriend.new(accecpted_friend_params)

    respond_to do |format|
      if @accecpted_friend.save
        format.html { redirect_to @accecpted_friend, notice: 'Accecpted friend was successfully created.' }
        format.json { render :show, status: :created, location: @accecpted_friend }
      else
        format.html { render :new }
        format.json { render json: @accecpted_friend.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /accecpted_friends/1
  # PATCH/PUT /accecpted_friends/1.json
  def update
    respond_to do |format|
      if @accecpted_friend.update(accecpted_friend_params)
        format.html { redirect_to @accecpted_friend, notice: 'Accecpted friend was successfully updated.' }
        format.json { render :show, status: :ok, location: @accecpted_friend }
      else
        format.html { render :edit }
        format.json { render json: @accecpted_friend.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /accecpted_friends/1
  # DELETE /accecpted_friends/1.json
  def destroy
    @accecpted_friend.destroy
    respond_to do |format|
      format.html { redirect_to accecpted_friends_url, notice: 'Accecpted friend was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_accecpted_friend
      @accecpted_friend = AccecptedFriend.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def accecpted_friend_params
      params.require(:accecpted_friend).permit(:user_id_1, :user_id_2)
    end
end
