require 'test_helper'

class AttendacesControllerTest < ActionController::TestCase
  setup do
    @attendace = attendaces(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:attendaces)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create attendace" do
    assert_difference('Attendace.count') do
      post :create, attendace: { event_id: @attendace.event_id, user_id: @attendace.user_id, user_uid: @attendace.user_uid }
    end

    assert_redirected_to attendace_path(assigns(:attendace))
  end

  test "should show attendace" do
    get :show, id: @attendace
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @attendace
    assert_response :success
  end

  test "should update attendace" do
    patch :update, id: @attendace, attendace: { event_id: @attendace.event_id, user_id: @attendace.user_id, user_uid: @attendace.user_uid }
    assert_redirected_to attendace_path(assigns(:attendace))
  end

  test "should destroy attendace" do
    assert_difference('Attendace.count', -1) do
      delete :destroy, id: @attendace
    end

    assert_redirected_to attendaces_path
  end
end
