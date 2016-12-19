require 'test_helper'

class BsdiBloodPressuresControllerTest < ActionController::TestCase
  setup do
    @bsdi_blood_pressure = bsdi_blood_pressures(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bsdi_blood_pressures)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bsdi_blood_pressure" do
    assert_difference('BsdiBloodPressure.count') do
      post :create, bsdi_blood_pressure: { bsdi_bp_medicine: @bsdi_blood_pressure.bsdi_bp_medicine, bsdi_diastolic: @bsdi_blood_pressure.bsdi_diastolic, bsdi_report_id: @bsdi_blood_pressure.bsdi_report_id, bsdi_systolic: @bsdi_blood_pressure.bsdi_systolic }
    end

    assert_redirected_to bsdi_blood_pressure_path(assigns(:bsdi_blood_pressure))
  end

  test "should show bsdi_blood_pressure" do
    get :show, id: @bsdi_blood_pressure
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bsdi_blood_pressure
    assert_response :success
  end

  test "should update bsdi_blood_pressure" do
    patch :update, id: @bsdi_blood_pressure, bsdi_blood_pressure: { bsdi_bp_medicine: @bsdi_blood_pressure.bsdi_bp_medicine, bsdi_diastolic: @bsdi_blood_pressure.bsdi_diastolic, bsdi_report_id: @bsdi_blood_pressure.bsdi_report_id, bsdi_systolic: @bsdi_blood_pressure.bsdi_systolic }
    assert_redirected_to bsdi_blood_pressure_path(assigns(:bsdi_blood_pressure))
  end

  test "should destroy bsdi_blood_pressure" do
    assert_difference('BsdiBloodPressure.count', -1) do
      delete :destroy, id: @bsdi_blood_pressure
    end

    assert_redirected_to bsdi_blood_pressures_path
  end
end
