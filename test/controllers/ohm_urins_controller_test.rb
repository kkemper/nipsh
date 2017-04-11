require 'test_helper'

class OhmUrinsControllerTest < ActionController::TestCase
  setup do
    @ohm_urin = ohm_urins(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ohm_urins)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ohm_urin" do
    assert_difference('OhmUrin.count') do
      post :create, ohm_urin: { moddate: @ohm_urin.moddate, ohm_occblood: @ohm_urin.ohm_occblood, ohm_protein: @ohm_urin.ohm_protein, ohm_uringlucose: @ohm_urin.ohm_uringlucose, ssn: @ohm_urin.ssn }
    end

    assert_redirected_to ohm_urin_path(assigns(:ohm_urin))
  end

  test "should show ohm_urin" do
    get :show, id: @ohm_urin
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ohm_urin
    assert_response :success
  end

  test "should update ohm_urin" do
    patch :update, id: @ohm_urin, ohm_urin: { moddate: @ohm_urin.moddate, ohm_occblood: @ohm_urin.ohm_occblood, ohm_protein: @ohm_urin.ohm_protein, ohm_uringlucose: @ohm_urin.ohm_uringlucose, ssn: @ohm_urin.ssn }
    assert_redirected_to ohm_urin_path(assigns(:ohm_urin))
  end

  test "should destroy ohm_urin" do
    assert_difference('OhmUrin.count', -1) do
      delete :destroy, id: @ohm_urin
    end

    assert_redirected_to ohm_urins_path
  end
end
