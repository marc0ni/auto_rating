require 'test_helper'

class DetailsControllerTest < ActionController::TestCase
  setup do
    @detail = details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create detail" do
    assert_difference('Detail.count') do
      post :create, detail: { age_group: @detail.age_group, business_use: @detail.business_use, cost_new: @detail.cost_new, fleet_nonfleet: @detail.fleet_nonfleet, gcw: @detail.gcw, gvw: @detail.gvw, load_capacity: @detail.load_capacity, make: @detail.make, model: @detail.model, partial: @detail.partial, radius_class: @detail.radius_class, risk_id: @detail.risk_id, size_class: @detail.size_class, spec_causes: @detail.spec_causes, territory: @detail.territory, year: @detail.year }
    end

    assert_redirected_to detail_path(assigns(:detail))
  end

  test "should show detail" do
    get :show, id: @detail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @detail
    assert_response :success
  end

  test "should update detail" do
    patch :update, id: @detail, detail: { age_group: @detail.age_group, business_use: @detail.business_use, cost_new: @detail.cost_new, fleet_nonfleet: @detail.fleet_nonfleet, gcw: @detail.gcw, gvw: @detail.gvw, load_capacity: @detail.load_capacity, make: @detail.make, model: @detail.model, partial: @detail.partial, radius_class: @detail.radius_class, risk_id: @detail.risk_id, size_class: @detail.size_class, spec_causes: @detail.spec_causes, territory: @detail.territory, year: @detail.year }
    assert_redirected_to detail_path(assigns(:detail))
  end

  test "should destroy detail" do
    assert_difference('Detail.count', -1) do
      delete :destroy, id: @detail
    end

    assert_redirected_to details_path
  end
end
