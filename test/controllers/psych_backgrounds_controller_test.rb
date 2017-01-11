require 'test_helper'

class PsychBackgroundsControllerTest < ActionController::TestCase
  setup do
    @psych_background = psych_backgrounds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:psych_backgrounds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create psych_background" do
    assert_difference('PsychBackground.count') do
      post :create, psych_background: { adhd: @psych_background.adhd, alcohol_drug_related_arrests: @psych_background.alcohol_drug_related_arrests, anx_do: @psych_background.anx_do, arrests: @psych_background.arrests, bankruptcies: @psych_background.bankruptcies, college_degree: @psych_background.college_degree, current_psych_meds: @psych_background.current_psych_meds, currnt_rx_meds: @psych_background.currnt_rx_meds, dep_episodes: @psych_background.dep_episodes, drink_per_week: @psych_background.drink_per_week, drinks_per_week: @psych_background.drinks_per_week, drinks_setting: @psych_background.drinks_setting, drnks_effcts: @psych_background.drnks_effcts, drv_suspensions: @psych_background.drv_suspensions, dscpln_military: @psych_background.dscpln_military, fights_adult: @psych_background.fights_adult, fights_drinking: @psych_background.fights_drinking, fired: @psych_background.fired, hgh_sch_susp: @psych_background.hgh_sch_susp, illegal_drugs_used: @psych_background.illegal_drugs_used, intox_month: @psych_background.intox_month, intox_year: @psych_background.intox_year, intox_year: @psych_background.intox_year, last_bankruptcy: @psych_background.last_bankruptcy, last_dx: @psych_background.last_dx, last_fight: @psych_background.last_fight, last_illegal_drug_use: @psych_background.last_illegal_drug_use, last_intox: @psych_background.last_intox, last_intox_driving: @psych_background.last_intox_driving, last_marijuana_use: @psych_background.last_marijuana_use, last_mh_hosptlztion: @psych_background.last_mh_hosptlztion, last_sh: @psych_background.last_sh, last_stolen: @psych_background.last_stolen, longest_period_dep: @psych_background.longest_period_dep, marijuana_use: @psych_background.marijuana_use, mh_dxs: @psych_background.mh_dxs, mh_hosptlztions: @psych_background.mh_hosptlztions, mood_do: @psych_background.mood_do, psych_meds_lifetime: @psych_background.psych_meds_lifetime, research_id: @psych_background.research_id, self_harm: @psych_background.self_harm, sex_with_minor: @psych_background.sex_with_minor, stole: @psych_background.stole, times_divorced: @psych_background.times_divorced, times_intox_driving: @psych_background.times_intox_driving, times_married: @psych_background.times_married, times_paying_for_sex: @psych_background.times_paying_for_sex, write_work: @psych_background.write_work, wrk_suspensions: @psych_background.wrk_suspensions, yrs_arrest: @psych_background.yrs_arrest, yrs_fired: @psych_background.yrs_fired, yrs_lic_susp: @psych_background.yrs_lic_susp, yrs_military_service: @psych_background.yrs_military_service, yrs_minor: @psych_background.yrs_minor, yrs_paid_sex: @psych_background.yrs_paid_sex, yrs_since_mst_recnt_dep_episd: @psych_background.yrs_since_mst_recnt_dep_episd, yrs_write_up_wrk: @psych_background.yrs_write_up_wrk, yrs_wrk_suspension: @psych_background.yrs_wrk_suspension }
    end

    assert_redirected_to psych_background_path(assigns(:psych_background))
  end

  test "should show psych_background" do
    get :show, id: @psych_background
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @psych_background
    assert_response :success
  end

  test "should update psych_background" do
    patch :update, id: @psych_background, psych_background: { adhd: @psych_background.adhd, alcohol_drug_related_arrests: @psych_background.alcohol_drug_related_arrests, anx_do: @psych_background.anx_do, arrests: @psych_background.arrests, bankruptcies: @psych_background.bankruptcies, college_degree: @psych_background.college_degree, current_psych_meds: @psych_background.current_psych_meds, currnt_rx_meds: @psych_background.currnt_rx_meds, dep_episodes: @psych_background.dep_episodes, drink_per_week: @psych_background.drink_per_week, drinks_per_week: @psych_background.drinks_per_week, drinks_setting: @psych_background.drinks_setting, drnks_effcts: @psych_background.drnks_effcts, drv_suspensions: @psych_background.drv_suspensions, dscpln_military: @psych_background.dscpln_military, fights_adult: @psych_background.fights_adult, fights_drinking: @psych_background.fights_drinking, fired: @psych_background.fired, hgh_sch_susp: @psych_background.hgh_sch_susp, illegal_drugs_used: @psych_background.illegal_drugs_used, intox_month: @psych_background.intox_month, intox_year: @psych_background.intox_year, intox_year: @psych_background.intox_year, last_bankruptcy: @psych_background.last_bankruptcy, last_dx: @psych_background.last_dx, last_fight: @psych_background.last_fight, last_illegal_drug_use: @psych_background.last_illegal_drug_use, last_intox: @psych_background.last_intox, last_intox_driving: @psych_background.last_intox_driving, last_marijuana_use: @psych_background.last_marijuana_use, last_mh_hosptlztion: @psych_background.last_mh_hosptlztion, last_sh: @psych_background.last_sh, last_stolen: @psych_background.last_stolen, longest_period_dep: @psych_background.longest_period_dep, marijuana_use: @psych_background.marijuana_use, mh_dxs: @psych_background.mh_dxs, mh_hosptlztions: @psych_background.mh_hosptlztions, mood_do: @psych_background.mood_do, psych_meds_lifetime: @psych_background.psych_meds_lifetime, research_id: @psych_background.research_id, self_harm: @psych_background.self_harm, sex_with_minor: @psych_background.sex_with_minor, stole: @psych_background.stole, times_divorced: @psych_background.times_divorced, times_intox_driving: @psych_background.times_intox_driving, times_married: @psych_background.times_married, times_paying_for_sex: @psych_background.times_paying_for_sex, write_work: @psych_background.write_work, wrk_suspensions: @psych_background.wrk_suspensions, yrs_arrest: @psych_background.yrs_arrest, yrs_fired: @psych_background.yrs_fired, yrs_lic_susp: @psych_background.yrs_lic_susp, yrs_military_service: @psych_background.yrs_military_service, yrs_minor: @psych_background.yrs_minor, yrs_paid_sex: @psych_background.yrs_paid_sex, yrs_since_mst_recnt_dep_episd: @psych_background.yrs_since_mst_recnt_dep_episd, yrs_write_up_wrk: @psych_background.yrs_write_up_wrk, yrs_wrk_suspension: @psych_background.yrs_wrk_suspension }
    assert_redirected_to psych_background_path(assigns(:psych_background))
  end

  test "should destroy psych_background" do
    assert_difference('PsychBackground.count', -1) do
      delete :destroy, id: @psych_background
    end

    assert_redirected_to psych_backgrounds_path
  end
end
