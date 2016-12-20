require 'test_helper'

class BsdiActivitiesControllerTest < ActionController::TestCase
  setup do
    @bsdi_activity = bsdi_activities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bsdi_activities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bsdi_activity" do
    assert_difference('BsdiActivity.count') do
      post :create, bsdi_activity: { bsdi_active_barrier_embarrassed: @bsdi_activity.bsdi_active_barrier_embarrassed, bsdi_active_barrier_injury: @bsdi_activity.bsdi_active_barrier_injury, bsdi_active_barrier_intimidating: @bsdi_activity.bsdi_active_barrier_intimidating, bsdi_active_barrier_medical_worry: @bsdi_activity.bsdi_active_barrier_medical_worry, bsdi_active_barrier_other: @bsdi_activity.bsdi_active_barrier_other, bsdi_active_barrier_people: @bsdi_activity.bsdi_active_barrier_people, bsdi_active_barrier_resources: @bsdi_activity.bsdi_active_barrier_resources, bsdi_active_barrier_time: @bsdi_activity.bsdi_active_barrier_time, bsdi_active_barrier_unfamiliar: @bsdi_activity.bsdi_active_barrier_unfamiliar, bsdi_active_barrier_unpleasant: @bsdi_activity.bsdi_active_barrier_unpleasant, bsdi_report_id: @bsdi_activity.bsdi_report_id, bsdi_rfc_activity: @bsdi_activity.bsdi_rfc_activity }
    end

    assert_redirected_to bsdi_activity_path(assigns(:bsdi_activity))
  end

  test "should show bsdi_activity" do
    get :show, id: @bsdi_activity
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bsdi_activity
    assert_response :success
  end

  test "should update bsdi_activity" do
    patch :update, id: @bsdi_activity, bsdi_activity: { bsdi_active_barrier_embarrassed: @bsdi_activity.bsdi_active_barrier_embarrassed, bsdi_active_barrier_injury: @bsdi_activity.bsdi_active_barrier_injury, bsdi_active_barrier_intimidating: @bsdi_activity.bsdi_active_barrier_intimidating, bsdi_active_barrier_medical_worry: @bsdi_activity.bsdi_active_barrier_medical_worry, bsdi_active_barrier_other: @bsdi_activity.bsdi_active_barrier_other, bsdi_active_barrier_people: @bsdi_activity.bsdi_active_barrier_people, bsdi_active_barrier_resources: @bsdi_activity.bsdi_active_barrier_resources, bsdi_active_barrier_time: @bsdi_activity.bsdi_active_barrier_time, bsdi_active_barrier_unfamiliar: @bsdi_activity.bsdi_active_barrier_unfamiliar, bsdi_active_barrier_unpleasant: @bsdi_activity.bsdi_active_barrier_unpleasant, bsdi_report_id: @bsdi_activity.bsdi_report_id, bsdi_rfc_activity: @bsdi_activity.bsdi_rfc_activity }
    assert_redirected_to bsdi_activity_path(assigns(:bsdi_activity))
  end

  test "should destroy bsdi_activity" do
    assert_difference('BsdiActivity.count', -1) do
      delete :destroy, id: @bsdi_activity
    end

    assert_redirected_to bsdi_activities_path
  end
end
