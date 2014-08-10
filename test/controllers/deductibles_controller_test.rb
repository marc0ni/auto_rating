require 'test_helper'

class DeductiblesControllerTest < ActionController::TestCase
  setup do
    @deductible = deductibles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:deductibles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create deductible" do
    assert_difference('Deductible.count') do
      post :create, deductible: { coll: @deductible.coll, comp: @deductible.comp, partial: @deductible.partial, risk_id: @deductible.risk_id, spec_causes: @deductible.spec_causes }
    end

    assert_redirected_to deductible_path(assigns(:deductible))
  end

  test "should show deductible" do
    get :show, id: @deductible
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @deductible
    assert_response :success
  end

  test "should update deductible" do
    patch :update, id: @deductible, deductible: { coll: @deductible.coll, comp: @deductible.comp, partial: @deductible.partial, risk_id: @deductible.risk_id, spec_causes: @deductible.spec_causes }
    assert_redirected_to deductible_path(assigns(:deductible))
  end

  test "should destroy deductible" do
    assert_difference('Deductible.count', -1) do
      delete :destroy, id: @deductible
    end

    assert_redirected_to deductibles_path
  end
end
