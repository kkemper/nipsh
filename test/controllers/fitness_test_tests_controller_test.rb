require 'test_helper'

class FitnessTestTestsControllerTest < ActionController::TestCase
  setup do
    @fitness_test_test = fitness_test_tests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fitness_test_tests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fitness_test_test" do
    assert_difference('FitnessTestTest.count') do
      post :create, fitness_test_test: { fitness_accuflex: @fitness_test_test.fitness_accuflex, fitness_age: @fitness_test_test.fitness_age, fitness_arm_curl: @fitness_test_test.fitness_arm_curl, fitness_arrestee: @fitness_test_test.fitness_arrestee, fitness_bia-ath: @fitness_test_test.fitness_bia-ath, fitness_bia-p-f: @fitness_test_test.fitness_bia-p-f, fitness_bia-stnd: @fitness_test_test.fitness_bia-stnd, fitness_bmi: @fitness_test_test.fitness_bmi, fitness_bod-p-f: @fitness_test_test.fitness_bod-p-f, fitness_bodpod: @fitness_test_test.fitness_bodpod, fitness_bp_response: @fitness_test_test.fitness_bp_response, fitness_canine: @fitness_test_test.fitness_canine, fitness_class_start_date: @fitness_test_test.fitness_class_start_date, fitness_crunches: @fitness_test_test.fitness_crunches, fitness_ectopy: @fitness_test_test.fitness_ectopy, fitness_envir-oficr: @fitness_test_test.fitness_envir-oficr, fitness_ex_rx_offered: @fitness_test_test.fitness_ex_rx_offered, fitness_flex-p-fl: @fitness_test_test.fitness_flex-p-fl, fitness_fms: @fitness_test_test.fitness_fms, fitness_grip-l: @fitness_test_test.fitness_grip-l, fitness_grip-r: @fitness_test_test.fitness_grip-r, fitness_hazmat: @fitness_test_test.fitness_hazmat, fitness_hip: @fitness_test_test.fitness_hip, fitness_ht: @fitness_test_test.fitness_ht, fitness_impression: @fitness_test_test.fitness_impression, fitness_jco: @fitness_test_test.fitness_jco, fitness_leg_press: @fitness_test_test.fitness_leg_press, fitness_max_dbp: @fitness_test_test.fitness_max_dbp, fitness_max_hr: @fitness_test_test.fitness_max_hr, fitness_max_mets: @fitness_test_test.fitness_max_mets, fitness_max_rpe: @fitness_test_test.fitness_max_rpe, fitness_max_sbp: @fitness_test_test.fitness_max_sbp, fitness_max_vo2: @fitness_test_test.fitness_max_vo2, fitness_merit: @fitness_test_test.fitness_merit, fitness_overread: @fitness_test_test.fitness_overread, fitness_percent_max_hr: @fitness_test_test.fitness_percent_max_hr, fitness_plank: @fitness_test_test.fitness_plank, fitness_pre_or_post: @fitness_test_test.fitness_pre_or_post, fitness_promo: @fitness_test_test.fitness_promo, fitness_push_ups: @fitness_test_test.fitness_push_ups, fitness_pvcs: @fitness_test_test.fitness_pvcs, fitness_q-1: @fitness_test_test.fitness_q-1, fitness_q-2: @fitness_test_test.fitness_q-2, fitness_q-3: @fitness_test_test.fitness_q-3, fitness_q-4: @fitness_test_test.fitness_q-4, fitness_recheck: @fitness_test_test.fitness_recheck, fitness_ref_letter: @fitness_test_test.fitness_ref_letter, fitness_report_id: @fitness_test_test.fitness_report_id, fitness_reserve: @fitness_test_test.fitness_reserve, fitness_rest_bp: @fitness_test_test.fitness_rest_bp, fitness_rest_dbp: @fitness_test_test.fitness_rest_dbp, fitness_rest_ecg: @fitness_test_test.fitness_rest_ecg, fitness_rest_hr: @fitness_test_test.fitness_rest_hr, fitness_rest_sbp: @fitness_test_test.fitness_rest_sbp, fitness_rtw: @fitness_test_test.fitness_rtw, fitness_rx_accepted: @fitness_test_test.fitness_rx_accepted, fitness_rx_required: @fitness_test_test.fitness_rx_required, fitness_scuba: @fitness_test_test.fitness_scuba, fitness_skinfold: @fitness_test_test.fitness_skinfold, fitness_skn-p-f: @fitness_test_test.fitness_skn-p-f, fitness_social_sec_num: @fitness_test_test.fitness_social_sec_num, fitness_swat: @fitness_test_test.fitness_swat, fitness_taskforce: @fitness_test_test.fitness_taskforce, fitness_tbw: @fitness_test_test.fitness_tbw, fitness_termination: @fitness_test_test.fitness_termination, fitness_test_type: @fitness_test_test.fitness_test_type, fitness_vo2-pass-fail: @fitness_test_test.fitness_vo2-pass-fail, fitness_waist: @fitness_test_test.fitness_waist, fitness_wfi_incentive: @fitness_test_test.fitness_wfi_incentive, fitness_wt: @fitness_test_test.fitness_wt }
    end

    assert_redirected_to fitness_test_test_path(assigns(:fitness_test_test))
  end

  test "should show fitness_test_test" do
    get :show, id: @fitness_test_test
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fitness_test_test
    assert_response :success
  end

  test "should update fitness_test_test" do
    patch :update, id: @fitness_test_test, fitness_test_test: { fitness_accuflex: @fitness_test_test.fitness_accuflex, fitness_age: @fitness_test_test.fitness_age, fitness_arm_curl: @fitness_test_test.fitness_arm_curl, fitness_arrestee: @fitness_test_test.fitness_arrestee, fitness_bia-ath: @fitness_test_test.fitness_bia-ath, fitness_bia-p-f: @fitness_test_test.fitness_bia-p-f, fitness_bia-stnd: @fitness_test_test.fitness_bia-stnd, fitness_bmi: @fitness_test_test.fitness_bmi, fitness_bod-p-f: @fitness_test_test.fitness_bod-p-f, fitness_bodpod: @fitness_test_test.fitness_bodpod, fitness_bp_response: @fitness_test_test.fitness_bp_response, fitness_canine: @fitness_test_test.fitness_canine, fitness_class_start_date: @fitness_test_test.fitness_class_start_date, fitness_crunches: @fitness_test_test.fitness_crunches, fitness_ectopy: @fitness_test_test.fitness_ectopy, fitness_envir-oficr: @fitness_test_test.fitness_envir-oficr, fitness_ex_rx_offered: @fitness_test_test.fitness_ex_rx_offered, fitness_flex-p-fl: @fitness_test_test.fitness_flex-p-fl, fitness_fms: @fitness_test_test.fitness_fms, fitness_grip-l: @fitness_test_test.fitness_grip-l, fitness_grip-r: @fitness_test_test.fitness_grip-r, fitness_hazmat: @fitness_test_test.fitness_hazmat, fitness_hip: @fitness_test_test.fitness_hip, fitness_ht: @fitness_test_test.fitness_ht, fitness_impression: @fitness_test_test.fitness_impression, fitness_jco: @fitness_test_test.fitness_jco, fitness_leg_press: @fitness_test_test.fitness_leg_press, fitness_max_dbp: @fitness_test_test.fitness_max_dbp, fitness_max_hr: @fitness_test_test.fitness_max_hr, fitness_max_mets: @fitness_test_test.fitness_max_mets, fitness_max_rpe: @fitness_test_test.fitness_max_rpe, fitness_max_sbp: @fitness_test_test.fitness_max_sbp, fitness_max_vo2: @fitness_test_test.fitness_max_vo2, fitness_merit: @fitness_test_test.fitness_merit, fitness_overread: @fitness_test_test.fitness_overread, fitness_percent_max_hr: @fitness_test_test.fitness_percent_max_hr, fitness_plank: @fitness_test_test.fitness_plank, fitness_pre_or_post: @fitness_test_test.fitness_pre_or_post, fitness_promo: @fitness_test_test.fitness_promo, fitness_push_ups: @fitness_test_test.fitness_push_ups, fitness_pvcs: @fitness_test_test.fitness_pvcs, fitness_q-1: @fitness_test_test.fitness_q-1, fitness_q-2: @fitness_test_test.fitness_q-2, fitness_q-3: @fitness_test_test.fitness_q-3, fitness_q-4: @fitness_test_test.fitness_q-4, fitness_recheck: @fitness_test_test.fitness_recheck, fitness_ref_letter: @fitness_test_test.fitness_ref_letter, fitness_report_id: @fitness_test_test.fitness_report_id, fitness_reserve: @fitness_test_test.fitness_reserve, fitness_rest_bp: @fitness_test_test.fitness_rest_bp, fitness_rest_dbp: @fitness_test_test.fitness_rest_dbp, fitness_rest_ecg: @fitness_test_test.fitness_rest_ecg, fitness_rest_hr: @fitness_test_test.fitness_rest_hr, fitness_rest_sbp: @fitness_test_test.fitness_rest_sbp, fitness_rtw: @fitness_test_test.fitness_rtw, fitness_rx_accepted: @fitness_test_test.fitness_rx_accepted, fitness_rx_required: @fitness_test_test.fitness_rx_required, fitness_scuba: @fitness_test_test.fitness_scuba, fitness_skinfold: @fitness_test_test.fitness_skinfold, fitness_skn-p-f: @fitness_test_test.fitness_skn-p-f, fitness_social_sec_num: @fitness_test_test.fitness_social_sec_num, fitness_swat: @fitness_test_test.fitness_swat, fitness_taskforce: @fitness_test_test.fitness_taskforce, fitness_tbw: @fitness_test_test.fitness_tbw, fitness_termination: @fitness_test_test.fitness_termination, fitness_test_type: @fitness_test_test.fitness_test_type, fitness_vo2-pass-fail: @fitness_test_test.fitness_vo2-pass-fail, fitness_waist: @fitness_test_test.fitness_waist, fitness_wfi_incentive: @fitness_test_test.fitness_wfi_incentive, fitness_wt: @fitness_test_test.fitness_wt }
    assert_redirected_to fitness_test_test_path(assigns(:fitness_test_test))
  end

  test "should destroy fitness_test_test" do
    assert_difference('FitnessTestTest.count', -1) do
      delete :destroy, id: @fitness_test_test
    end

    assert_redirected_to fitness_test_tests_path
  end
end
