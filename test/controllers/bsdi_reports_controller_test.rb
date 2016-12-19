require 'test_helper'

class BsdiReportsControllerTest < ActionController::TestCase
  setup do
    @bsdi_report = bsdi_reports(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bsdi_reports)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bsdi_report" do
    assert_difference('BsdiReport.count') do
      post :create, bsdi_report: { bsdi_date: @bsdi_report.bsdi_date, bsdi_newest: @bsdi_report.bsdi_newest, bsdi_patient_id: @bsdi_report.bsdi_patient_id, bsdi_staff_entry: @bsdi_report.bsdi_staff_entry, bsdi_user_defined_flag: @bsdi_report.bsdi_user_defined_flag, bsdi_valid_year: @bsdi_report.bsdi_valid_year }
    end

    assert_redirected_to bsdi_report_path(assigns(:bsdi_report))
  end

  test "should show bsdi_report" do
    get :show, id: @bsdi_report
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bsdi_report
    assert_response :success
  end

  test "should update bsdi_report" do
    patch :update, id: @bsdi_report, bsdi_report: { bsdi_date: @bsdi_report.bsdi_date, bsdi_newest: @bsdi_report.bsdi_newest, bsdi_patient_id: @bsdi_report.bsdi_patient_id, bsdi_staff_entry: @bsdi_report.bsdi_staff_entry, bsdi_user_defined_flag: @bsdi_report.bsdi_user_defined_flag, bsdi_valid_year: @bsdi_report.bsdi_valid_year }
    assert_redirected_to bsdi_report_path(assigns(:bsdi_report))
  end

  test "should destroy bsdi_report" do
    assert_difference('BsdiReport.count', -1) do
      delete :destroy, id: @bsdi_report
    end

    assert_redirected_to bsdi_reports_path
  end
end
