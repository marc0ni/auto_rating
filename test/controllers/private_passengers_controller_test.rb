require 'test_helper'

class PrivatePassengersControllerTest < ActionController::TestCase
  setup do
    @private_passenger = private_passengers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:private_passengers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create private_passenger" do
    assert_difference('PrivatePassenger.count') do
      post :create, private_passenger: { age_group: @private_passenger.age_group, cost_new: @private_passenger.cost_new, make: @private_passenger.make, model: @private_passenger.model, territory: @private_passenger.territory, year: @private_passenger.year }
    end

    assert_redirected_to private_passenger_path(assigns(:private_passenger))
  end

  test "should show private_passenger" do
    get :show, id: @private_passenger
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @private_passenger
    assert_response :success
  end

  test "should update private_passenger" do
    patch :update, id: @private_passenger, private_passenger: { age_group: @private_passenger.age_group, cost_new: @private_passenger.cost_new, make: @private_passenger.make, model: @private_passenger.model, territory: @private_passenger.territory, year: @private_passenger.year }
    assert_redirected_to private_passenger_path(assigns(:private_passenger))
  end

  test "should destroy private_passenger" do
    assert_difference('PrivatePassenger.count', -1) do
      delete :destroy, id: @private_passenger
    end

    assert_redirected_to private_passengers_path
  end
end
