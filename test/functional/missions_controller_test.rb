require 'test_helper'

class MissionsControllerTest < ActionController::TestCase
  setup do
    @mission = missions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:missions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mission" do
    assert_difference('Mission.count') do
      post :create, mission: { description: @mission.description, title: @mission.title }
    end

    assert_redirected_to mission_path(assigns(:mission))
  end

  test "should show mission" do
    get :show, id: @mission
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mission
    assert_response :success
  end

  test "should update mission" do
    put :update, id: @mission, mission: { description: @mission.description, title: @mission.title }
    assert_redirected_to mission_path(assigns(:mission))
  end

  test "should destroy mission" do
    assert_difference('Mission.count', -1) do
      delete :destroy, id: @mission
    end

    assert_redirected_to missions_path
  end
end
