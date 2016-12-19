require 'test_helper'

class BsdiSmokingsControllerTest < ActionController::TestCase
  setup do
    @bsdi_smoking = bsdi_smokings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bsdi_smokings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bsdi_smoking" do
    assert_difference('BsdiSmoking.count') do
      post :create, bsdi_smoking: { bsdi_report_id: @bsdi_smoking.bsdi_report_id, bsdi_smoking_status: @bsdi_smoking.bsdi_smoking_status }
    end

    assert_redirected_to bsdi_smoking_path(assigns(:bsdi_smoking))
  end

  test "should show bsdi_smoking" do
    get :show, id: @bsdi_smoking
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bsdi_smoking
    assert_response :success
  end

  test "should update bsdi_smoking" do
    patch :update, id: @bsdi_smoking, bsdi_smoking: { bsdi_report_id: @bsdi_smoking.bsdi_report_id, bsdi_smoking_status: @bsdi_smoking.bsdi_smoking_status }
    assert_redirected_to bsdi_smoking_path(assigns(:bsdi_smoking))
  end

  test "should destroy bsdi_smoking" do
    assert_difference('BsdiSmoking.count', -1) do
      delete :destroy, id: @bsdi_smoking
    end

    assert_redirected_to bsdi_smokings_path
  end
end
