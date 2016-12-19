require 'test_helper'

class BsdiBloodChemistriesControllerTest < ActionController::TestCase
  setup do
    @bsdi_blood_chemistry = bsdi_blood_chemistries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bsdi_blood_chemistries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bsdi_blood_chemistry" do
    assert_difference('BsdiBloodChemistry.count') do
      post :create, bsdi_blood_chemistry: { bsdi_a1c: @bsdi_blood_chemistry.bsdi_a1c, bsdi_bchem_date: @bsdi_blood_chemistry.bsdi_bchem_date, bsdi_blood_chem_risk: @bsdi_blood_chemistry.bsdi_blood_chem_risk, bsdi_cholesterol: @bsdi_blood_chemistry.bsdi_cholesterol, bsdi_cholesterol_meds: @bsdi_blood_chemistry.bsdi_cholesterol_meds, bsdi_glucose: @bsdi_blood_chemistry.bsdi_glucose, bsdi_hdl: @bsdi_blood_chemistry.bsdi_hdl, bsdi_hdl_status: @bsdi_blood_chemistry.bsdi_hdl_status, bsdi_high_cholesterol: @bsdi_blood_chemistry.bsdi_high_cholesterol, bsdi_high_ldl: @bsdi_blood_chemistry.bsdi_high_ldl, bsdi_high_triglyceride: @bsdi_blood_chemistry.bsdi_high_triglyceride, bsdi_ldl: @bsdi_blood_chemistry.bsdi_ldl, bsdi_pre_diabetes: @bsdi_blood_chemistry.bsdi_pre_diabetes, bsdi_report_id: @bsdi_blood_chemistry.bsdi_report_id, bsdi_triglycerides: @bsdi_blood_chemistry.bsdi_triglycerides }
    end

    assert_redirected_to bsdi_blood_chemistry_path(assigns(:bsdi_blood_chemistry))
  end

  test "should show bsdi_blood_chemistry" do
    get :show, id: @bsdi_blood_chemistry
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bsdi_blood_chemistry
    assert_response :success
  end

  test "should update bsdi_blood_chemistry" do
    patch :update, id: @bsdi_blood_chemistry, bsdi_blood_chemistry: { bsdi_a1c: @bsdi_blood_chemistry.bsdi_a1c, bsdi_bchem_date: @bsdi_blood_chemistry.bsdi_bchem_date, bsdi_blood_chem_risk: @bsdi_blood_chemistry.bsdi_blood_chem_risk, bsdi_cholesterol: @bsdi_blood_chemistry.bsdi_cholesterol, bsdi_cholesterol_meds: @bsdi_blood_chemistry.bsdi_cholesterol_meds, bsdi_glucose: @bsdi_blood_chemistry.bsdi_glucose, bsdi_hdl: @bsdi_blood_chemistry.bsdi_hdl, bsdi_hdl_status: @bsdi_blood_chemistry.bsdi_hdl_status, bsdi_high_cholesterol: @bsdi_blood_chemistry.bsdi_high_cholesterol, bsdi_high_ldl: @bsdi_blood_chemistry.bsdi_high_ldl, bsdi_high_triglyceride: @bsdi_blood_chemistry.bsdi_high_triglyceride, bsdi_ldl: @bsdi_blood_chemistry.bsdi_ldl, bsdi_pre_diabetes: @bsdi_blood_chemistry.bsdi_pre_diabetes, bsdi_report_id: @bsdi_blood_chemistry.bsdi_report_id, bsdi_triglycerides: @bsdi_blood_chemistry.bsdi_triglycerides }
    assert_redirected_to bsdi_blood_chemistry_path(assigns(:bsdi_blood_chemistry))
  end

  test "should destroy bsdi_blood_chemistry" do
    assert_difference('BsdiBloodChemistry.count', -1) do
      delete :destroy, id: @bsdi_blood_chemistry
    end

    assert_redirected_to bsdi_blood_chemistries_path
  end
end
