require 'test_helper'

class BsdiHistoriesControllerTest < ActionController::TestCase
  setup do
    @bsdi_history = bsdi_histories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bsdi_histories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bsdi_history" do
    assert_difference('BsdiHistory.count') do
      post :create, bsdi_history: { bsdi_family_cancer: @bsdi_history.bsdi_family_cancer, bsdi_family_cholesterol: @bsdi_history.bsdi_family_cholesterol, bsdi_family_diabetes: @bsdi_history.bsdi_family_diabetes, bsdi_family_heart_only: @bsdi_history.bsdi_family_heart_only, bsdi_family_hypertension: @bsdi_history.bsdi_family_hypertension, bsdi_family_stroke: @bsdi_history.bsdi_family_stroke, bsdi_report_id: @bsdi_history.bsdi_report_id }
    end

    assert_redirected_to bsdi_history_path(assigns(:bsdi_history))
  end

  test "should show bsdi_history" do
    get :show, id: @bsdi_history
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bsdi_history
    assert_response :success
  end

  test "should update bsdi_history" do
    patch :update, id: @bsdi_history, bsdi_history: { bsdi_family_cancer: @bsdi_history.bsdi_family_cancer, bsdi_family_cholesterol: @bsdi_history.bsdi_family_cholesterol, bsdi_family_diabetes: @bsdi_history.bsdi_family_diabetes, bsdi_family_heart_only: @bsdi_history.bsdi_family_heart_only, bsdi_family_hypertension: @bsdi_history.bsdi_family_hypertension, bsdi_family_stroke: @bsdi_history.bsdi_family_stroke, bsdi_report_id: @bsdi_history.bsdi_report_id }
    assert_redirected_to bsdi_history_path(assigns(:bsdi_history))
  end

  test "should destroy bsdi_history" do
    assert_difference('BsdiHistory.count', -1) do
      delete :destroy, id: @bsdi_history
    end

    assert_redirected_to bsdi_histories_path
  end
end
