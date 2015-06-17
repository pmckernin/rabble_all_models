require 'test_helper'

class AccecptedFriendsControllerTest < ActionController::TestCase
  setup do
    @accecpted_friend = accecpted_friends(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:accecpted_friends)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create accecpted_friend" do
    assert_difference('AccecptedFriend.count') do
      post :create, accecpted_friend: { user_id_1: @accecpted_friend.user_id_1, user_id_2: @accecpted_friend.user_id_2 }
    end

    assert_redirected_to accecpted_friend_path(assigns(:accecpted_friend))
  end

  test "should show accecpted_friend" do
    get :show, id: @accecpted_friend
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @accecpted_friend
    assert_response :success
  end

  test "should update accecpted_friend" do
    patch :update, id: @accecpted_friend, accecpted_friend: { user_id_1: @accecpted_friend.user_id_1, user_id_2: @accecpted_friend.user_id_2 }
    assert_redirected_to accecpted_friend_path(assigns(:accecpted_friend))
  end

  test "should destroy accecpted_friend" do
    assert_difference('AccecptedFriend.count', -1) do
      delete :destroy, id: @accecpted_friend
    end

    assert_redirected_to accecpted_friends_path
  end
end
