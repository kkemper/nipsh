require 'test_helper'

class OhmCbcsControllerTest < ActionController::TestCase
  setup do
    @ohm_cbc = ohm_cbcs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ohm_cbcs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ohm_cbc" do
    assert_difference('OhmCbc.count') do
      post :create, ohm_cbc: { moddate: @ohm_cbc.moddate, ohm_hema: @ohm_cbc.ohm_hema, ohm_hemo: @ohm_cbc.ohm_hemo, ohm_wbc: @ohm_cbc.ohm_wbc, ssn: @ohm_cbc.ssn }
    end

    assert_redirected_to ohm_cbc_path(assigns(:ohm_cbc))
  end

  test "should show ohm_cbc" do
    get :show, id: @ohm_cbc
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ohm_cbc
    assert_response :success
  end

  test "should update ohm_cbc" do
    patch :update, id: @ohm_cbc, ohm_cbc: { moddate: @ohm_cbc.moddate, ohm_hema: @ohm_cbc.ohm_hema, ohm_hemo: @ohm_cbc.ohm_hemo, ohm_wbc: @ohm_cbc.ohm_wbc, ssn: @ohm_cbc.ssn }
    assert_redirected_to ohm_cbc_path(assigns(:ohm_cbc))
  end

  test "should destroy ohm_cbc" do
    assert_difference('OhmCbc.count', -1) do
      delete :destroy, id: @ohm_cbc
    end

    assert_redirected_to ohm_cbcs_path
  end
end
