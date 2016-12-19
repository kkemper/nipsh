require 'test_helper'

class BsdiMeasurementsControllerTest < ActionController::TestCase
  setup do
    @bsdi_measurement = bsdi_measurements(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bsdi_measurements)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bsdi_measurement" do
    assert_difference('BsdiMeasurement.count') do
      post :create, bsdi_measurement: { bsdi_bmi: @bsdi_measurement.bsdi_bmi, bsdi_bmi_category: @bsdi_measurement.bsdi_bmi_category, bsdi_disabled: @bsdi_measurement.bsdi_disabled, bsdi_height: @bsdi_measurement.bsdi_height, bsdi_high_risk_bmi: @bsdi_measurement.bsdi_high_risk_bmi, bsdi_hips: @bsdi_measurement.bsdi_hips, bsdi_hypertrophic: @bsdi_measurement.bsdi_hypertrophic, bsdi_waist: @bsdi_measurement.bsdi_waist, bsdi_waist_risk: @bsdi_measurement.bsdi_waist_risk, bsdi_weight: @bsdi_measurement.bsdi_weight, bsdi_weight_belief: @bsdi_measurement.bsdi_weight_belief }
    end

    assert_redirected_to bsdi_measurement_path(assigns(:bsdi_measurement))
  end

  test "should show bsdi_measurement" do
    get :show, id: @bsdi_measurement
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bsdi_measurement
    assert_response :success
  end

  test "should update bsdi_measurement" do
    patch :update, id: @bsdi_measurement, bsdi_measurement: { bsdi_bmi: @bsdi_measurement.bsdi_bmi, bsdi_bmi_category: @bsdi_measurement.bsdi_bmi_category, bsdi_disabled: @bsdi_measurement.bsdi_disabled, bsdi_height: @bsdi_measurement.bsdi_height, bsdi_high_risk_bmi: @bsdi_measurement.bsdi_high_risk_bmi, bsdi_hips: @bsdi_measurement.bsdi_hips, bsdi_hypertrophic: @bsdi_measurement.bsdi_hypertrophic, bsdi_waist: @bsdi_measurement.bsdi_waist, bsdi_waist_risk: @bsdi_measurement.bsdi_waist_risk, bsdi_weight: @bsdi_measurement.bsdi_weight, bsdi_weight_belief: @bsdi_measurement.bsdi_weight_belief }
    assert_redirected_to bsdi_measurement_path(assigns(:bsdi_measurement))
  end

  test "should destroy bsdi_measurement" do
    assert_difference('BsdiMeasurement.count', -1) do
      delete :destroy, id: @bsdi_measurement
    end

    assert_redirected_to bsdi_measurements_path
  end
end
