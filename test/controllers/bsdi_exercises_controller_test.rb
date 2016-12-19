require 'test_helper'

class BsdiExercisesControllerTest < ActionController::TestCase
  setup do
    @bsdi_exercise = bsdi_exercises(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bsdi_exercises)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bsdi_exercise" do
    assert_difference('BsdiExercise.count') do
      post :create, bsdi_exercise: { bsdi_activity_minutes_moderate: @bsdi_exercise.bsdi_activity_minutes_moderate, bsdi_activity_minutes_vigorous: @bsdi_exercise.bsdi_activity_minutes_vigorous, bsdi_exercise: @bsdi_exercise.bsdi_exercise, bsdi_hip_knee_problems: @bsdi_exercise.bsdi_hip_knee_problems, bsdi_how_long_active: @bsdi_exercise.bsdi_how_long_active, bsdi_other_reason_no_exercise: @bsdi_exercise.bsdi_other_reason_no_exercise, bsdi_physical_inactivity: @bsdi_exercise.bsdi_physical_inactivity, bsdi_report_id: @bsdi_exercise.bsdi_report_id, bsdi_sedentary: @bsdi_exercise.bsdi_sedentary }
    end

    assert_redirected_to bsdi_exercise_path(assigns(:bsdi_exercise))
  end

  test "should show bsdi_exercise" do
    get :show, id: @bsdi_exercise
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bsdi_exercise
    assert_response :success
  end

  test "should update bsdi_exercise" do
    patch :update, id: @bsdi_exercise, bsdi_exercise: { bsdi_activity_minutes_moderate: @bsdi_exercise.bsdi_activity_minutes_moderate, bsdi_activity_minutes_vigorous: @bsdi_exercise.bsdi_activity_minutes_vigorous, bsdi_exercise: @bsdi_exercise.bsdi_exercise, bsdi_hip_knee_problems: @bsdi_exercise.bsdi_hip_knee_problems, bsdi_how_long_active: @bsdi_exercise.bsdi_how_long_active, bsdi_other_reason_no_exercise: @bsdi_exercise.bsdi_other_reason_no_exercise, bsdi_physical_inactivity: @bsdi_exercise.bsdi_physical_inactivity, bsdi_report_id: @bsdi_exercise.bsdi_report_id, bsdi_sedentary: @bsdi_exercise.bsdi_sedentary }
    assert_redirected_to bsdi_exercise_path(assigns(:bsdi_exercise))
  end

  test "should destroy bsdi_exercise" do
    assert_difference('BsdiExercise.count', -1) do
      delete :destroy, id: @bsdi_exercise
    end

    assert_redirected_to bsdi_exercises_path
  end
end
