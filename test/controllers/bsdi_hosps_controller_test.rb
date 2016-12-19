require 'test_helper'

class BsdiHospsControllerTest < ActionController::TestCase
  setup do
    @bsdi_hosp = bsdi_hosps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bsdi_hosps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bsdi_hosp" do
    assert_difference('BsdiHosp.count') do
      post :create, bsdi_hosp: { bsdi_hospitalization: @bsdi_hosp.bsdi_hospitalization, bsdi_report_id: @bsdi_hosp.bsdi_report_id }
    end

    assert_redirected_to bsdi_hosp_path(assigns(:bsdi_hosp))
  end

  test "should show bsdi_hosp" do
    get :show, id: @bsdi_hosp
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bsdi_hosp
    assert_response :success
  end

  test "should update bsdi_hosp" do
    patch :update, id: @bsdi_hosp, bsdi_hosp: { bsdi_hospitalization: @bsdi_hosp.bsdi_hospitalization, bsdi_report_id: @bsdi_hosp.bsdi_report_id }
    assert_redirected_to bsdi_hosp_path(assigns(:bsdi_hosp))
  end

  test "should destroy bsdi_hosp" do
    assert_difference('BsdiHosp.count', -1) do
      delete :destroy, id: @bsdi_hosp
    end

    assert_redirected_to bsdi_hosps_path
  end
end
