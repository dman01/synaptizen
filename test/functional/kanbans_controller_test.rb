require 'test_helper'

class KanbansControllerTest < ActionController::TestCase
  setup do
    @kanban = kanbans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kanbans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create kanban" do
    assert_difference('Kanban.count') do
      post :create, :kanban => @kanban.attributes
    end

    assert_redirected_to kanban_path(assigns(:kanban))
  end

  test "should show kanban" do
    get :show, :id => @kanban.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @kanban.to_param
    assert_response :success
  end

  test "should update kanban" do
    put :update, :id => @kanban.to_param, :kanban => @kanban.attributes
    assert_redirected_to kanban_path(assigns(:kanban))
  end

  test "should destroy kanban" do
    assert_difference('Kanban.count', -1) do
      delete :destroy, :id => @kanban.to_param
    end

    assert_redirected_to kanbans_path
  end
end
