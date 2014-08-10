require 'test_helper'

class LimitsControllerTest < ActionController::TestCase
  setup do
    @limit = limits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:limits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create limit" do
    assert_difference('Limit.count') do
      post :create, limit: { bipd: @limit.bipd, medical: @limit.medical, partial: @limit.partial, risk_id: @limit.risk_id }
    end

    assert_redirected_to limit_path(assigns(:limit))
  end

  test "should show limit" do
    get :show, id: @limit
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @limit
    assert_response :success
  end

  test "should update limit" do
    patch :update, id: @limit, limit: { bipd: @limit.bipd, medical: @limit.medical, partial: @limit.partial, risk_id: @limit.risk_id }
    assert_redirected_to limit_path(assigns(:limit))
  end

  test "should destroy limit" do
    assert_difference('Limit.count', -1) do
      delete :destroy, id: @limit
    end

    assert_redirected_to limits_path
  end
end
