require 'test_helper'

class BsdiAnnualsControllerTest < ActionController::TestCase
  setup do
    @bsdi_annual = bsdi_annuals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bsdi_annuals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bsdi_annual" do
    assert_difference('BsdiAnnual.count') do
      post :create, bsdi_annual: { bsdi_breast_exam: @bsdi_annual.bsdi_breast_exam, bsdi_check_bp: @bsdi_annual.bsdi_check_bp, bsdi_check_chol: @bsdi_annual.bsdi_check_chol, bsdi_colonoscopy: @bsdi_annual.bsdi_colonoscopy, bsdi_emergency_room: @bsdi_annual.bsdi_emergency_room, bsdi_flu_shot: @bsdi_annual.bsdi_flu_shot, bsdi_high_absenteeism: @bsdi_annual.bsdi_high_absenteeism, bsdi_hospital_visits: @bsdi_annual.bsdi_hospital_visits, bsdi_mammogram: @bsdi_annual.bsdi_mammogram, bsdi_papsmear: @bsdi_annual.bsdi_papsmear, bsdi_physician_visits: @bsdi_annual.bsdi_physician_visits, bsdi_prostate: @bsdi_annual.bsdi_prostate, bsdi_report_id: @bsdi_annual.bsdi_report_id, bsdi_seat_belt: @bsdi_annual.bsdi_seat_belt, bsdi_see_dentist: @bsdi_annual.bsdi_see_dentist, bsdi_see_doctor: @bsdi_annual.bsdi_see_doctor, bsdi_testicular_exam: @bsdi_annual.bsdi_testicular_exam }
    end

    assert_redirected_to bsdi_annual_path(assigns(:bsdi_annual))
  end

  test "should show bsdi_annual" do
    get :show, id: @bsdi_annual
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bsdi_annual
    assert_response :success
  end

  test "should update bsdi_annual" do
    patch :update, id: @bsdi_annual, bsdi_annual: { bsdi_breast_exam: @bsdi_annual.bsdi_breast_exam, bsdi_check_bp: @bsdi_annual.bsdi_check_bp, bsdi_check_chol: @bsdi_annual.bsdi_check_chol, bsdi_colonoscopy: @bsdi_annual.bsdi_colonoscopy, bsdi_emergency_room: @bsdi_annual.bsdi_emergency_room, bsdi_flu_shot: @bsdi_annual.bsdi_flu_shot, bsdi_high_absenteeism: @bsdi_annual.bsdi_high_absenteeism, bsdi_hospital_visits: @bsdi_annual.bsdi_hospital_visits, bsdi_mammogram: @bsdi_annual.bsdi_mammogram, bsdi_papsmear: @bsdi_annual.bsdi_papsmear, bsdi_physician_visits: @bsdi_annual.bsdi_physician_visits, bsdi_prostate: @bsdi_annual.bsdi_prostate, bsdi_report_id: @bsdi_annual.bsdi_report_id, bsdi_seat_belt: @bsdi_annual.bsdi_seat_belt, bsdi_see_dentist: @bsdi_annual.bsdi_see_dentist, bsdi_see_doctor: @bsdi_annual.bsdi_see_doctor, bsdi_testicular_exam: @bsdi_annual.bsdi_testicular_exam }
    assert_redirected_to bsdi_annual_path(assigns(:bsdi_annual))
  end

  test "should destroy bsdi_annual" do
    assert_difference('BsdiAnnual.count', -1) do
      delete :destroy, id: @bsdi_annual
    end

    assert_redirected_to bsdi_annuals_path
  end
end
