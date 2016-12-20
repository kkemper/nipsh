require 'test_helper'

class BsdiPsychesControllerTest < ActionController::TestCase
  setup do
    @bsdi_psych = bsdi_psyches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bsdi_psyches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bsdi_psych" do
    assert_difference('BsdiPsych.count') do
      post :create, bsdi_psych: { bsdi_friends: @bsdi_psych.bsdi_friends, bsdi_insufficient_sleep: @bsdi_psych.bsdi_insufficient_sleep, bsdi_life_satisfaction: @bsdi_psych.bsdi_life_satisfaction, bsdi_psych_overall: @bsdi_psych.bsdi_psych_overall, bsdi_psych_stress_effect: @bsdi_psych.bsdi_psych_stress_effect, bsdi_report_id: @bsdi_psych.bsdi_report_id, bsdi_satisfaction_job: @bsdi_psych.bsdi_satisfaction_job, bsdi_sleep: @bsdi_psych.bsdi_sleep, bsdi_social_ties: @bsdi_psych.bsdi_social_ties, bsdi_spirit_health: @bsdi_psych.bsdi_spirit_health, bsdi_stress_level: @bsdi_psych.bsdi_stress_level }
    end

    assert_redirected_to bsdi_psych_path(assigns(:bsdi_psych))
  end

  test "should show bsdi_psych" do
    get :show, id: @bsdi_psych
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bsdi_psych
    assert_response :success
  end

  test "should update bsdi_psych" do
    patch :update, id: @bsdi_psych, bsdi_psych: { bsdi_friends: @bsdi_psych.bsdi_friends, bsdi_insufficient_sleep: @bsdi_psych.bsdi_insufficient_sleep, bsdi_life_satisfaction: @bsdi_psych.bsdi_life_satisfaction, bsdi_psych_overall: @bsdi_psych.bsdi_psych_overall, bsdi_psych_stress_effect: @bsdi_psych.bsdi_psych_stress_effect, bsdi_report_id: @bsdi_psych.bsdi_report_id, bsdi_satisfaction_job: @bsdi_psych.bsdi_satisfaction_job, bsdi_sleep: @bsdi_psych.bsdi_sleep, bsdi_social_ties: @bsdi_psych.bsdi_social_ties, bsdi_spirit_health: @bsdi_psych.bsdi_spirit_health, bsdi_stress_level: @bsdi_psych.bsdi_stress_level }
    assert_redirected_to bsdi_psych_path(assigns(:bsdi_psych))
  end

  test "should destroy bsdi_psych" do
    assert_difference('BsdiPsych.count', -1) do
      delete :destroy, id: @bsdi_psych
    end

    assert_redirected_to bsdi_psyches_path
  end
end
