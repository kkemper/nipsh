require 'test_helper'

class BsdiRisksControllerTest < ActionController::TestCase
  setup do
    @bsdi_risk = bsdi_risks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bsdi_risks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bsdi_risk" do
    assert_difference('BsdiRisk.count') do
      post :create, bsdi_risk: { bsdi_report_id: @bsdi_risk.bsdi_report_id, bsdi_risk_factor_count: @bsdi_risk.bsdi_risk_factor_count, bsdi_risk_stratification: @bsdi_risk.bsdi_risk_stratification, bsdi_self_rating: @bsdi_risk.bsdi_self_rating }
    end

    assert_redirected_to bsdi_risk_path(assigns(:bsdi_risk))
  end

  test "should show bsdi_risk" do
    get :show, id: @bsdi_risk
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bsdi_risk
    assert_response :success
  end

  test "should update bsdi_risk" do
    patch :update, id: @bsdi_risk, bsdi_risk: { bsdi_report_id: @bsdi_risk.bsdi_report_id, bsdi_risk_factor_count: @bsdi_risk.bsdi_risk_factor_count, bsdi_risk_stratification: @bsdi_risk.bsdi_risk_stratification, bsdi_self_rating: @bsdi_risk.bsdi_self_rating }
    assert_redirected_to bsdi_risk_path(assigns(:bsdi_risk))
  end

  test "should destroy bsdi_risk" do
    assert_difference('BsdiRisk.count', -1) do
      delete :destroy, id: @bsdi_risk
    end

    assert_redirected_to bsdi_risks_path
  end
end
