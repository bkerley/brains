require 'test_helper'

class HideoutsControllerTest < ActionController::TestCase
  setup do
    @hideout = hideouts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hideouts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hideout" do
    assert_difference('Hideout.count') do
      post :create, hideout: { name: @hideout.name }
    end

    assert_redirected_to hideout_path(assigns(:hideout))
  end

  test "should show hideout" do
    get :show, id: @hideout
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hideout
    assert_response :success
  end

  test "should update hideout" do
    put :update, id: @hideout, hideout: { name: @hideout.name }
    assert_redirected_to hideout_path(assigns(:hideout))
  end

  test "should destroy hideout" do
    assert_difference('Hideout.count', -1) do
      delete :destroy, id: @hideout
    end

    assert_redirected_to hideouts_path
  end
end
