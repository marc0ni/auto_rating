require 'test_helper'

class RisksControllerTest < ActionController::TestCase
  setup do
    @risk = risks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:risks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create risk" do
    assert_difference('Risk.count') do
      post :create, risk: { deductible: @risk.deductible, deductibles_id: @risk.deductibles_id, details_id: @risk.details_id, limit: @risk.limit, limits_id: @risk.limits_id, premium: @risk.premium, risk: @risk.risk, submission_id: @risk.submission_id }
    end

    assert_redirected_to risk_path(assigns(:risk))
  end

  test "should show risk" do
    get :show, id: @risk
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @risk
    assert_response :success
  end

  test "should update risk" do
    patch :update, id: @risk, risk: { deductible: @risk.deductible, deductibles_id: @risk.deductibles_id, details_id: @risk.details_id, limit: @risk.limit, limits_id: @risk.limits_id, premium: @risk.premium, risk: @risk.risk, submission_id: @risk.submission_id }
    assert_redirected_to risk_path(assigns(:risk))
  end

  test "should destroy risk" do
    assert_difference('Risk.count', -1) do
      delete :destroy, id: @risk
    end

    assert_redirected_to risks_path
  end
end
