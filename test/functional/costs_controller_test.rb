require 'test_helper'

class CostsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:costs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cost" do
    assert_difference('Cost.count') do
      post :create, :cost => { }
    end

    assert_redirected_to cost_path(assigns(:cost))
  end

  test "should show cost" do
    get :show, :id => costs(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => costs(:one).to_param
    assert_response :success
  end

  test "should update cost" do
    put :update, :id => costs(:one).to_param, :cost => { }
    assert_redirected_to cost_path(assigns(:cost))
  end

  test "should destroy cost" do
    assert_difference('Cost.count', -1) do
      delete :destroy, :id => costs(:one).to_param
    end

    assert_redirected_to costs_path
  end
end
