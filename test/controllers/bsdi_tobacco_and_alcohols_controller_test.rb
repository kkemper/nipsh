require 'test_helper'

class BsdiTobaccoAndAlcoholsControllerTest < ActionController::TestCase
  setup do
    @bsdi_tobacco_and_alcohol = bsdi_tobacco_and_alcohols(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bsdi_tobacco_and_alcohols)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bsdi_tobacco_and_alcohol" do
    assert_difference('BsdiTobaccoAndAlcohol.count') do
      post :create, bsdi_tobacco_and_alcohol: { bsdi_alcohol: @bsdi_tobacco_and_alcohol.bsdi_alcohol, bsdi_binge_drinking: @bsdi_tobacco_and_alcohol.bsdi_binge_drinking, bsdi_medication_relax: @bsdi_tobacco_and_alcohol.bsdi_medication_relax, bsdi_report_id: @bsdi_tobacco_and_alcohol.bsdi_report_id, bsdi_tobacco: @bsdi_tobacco_and_alcohol.bsdi_tobacco }
    end

    assert_redirected_to bsdi_tobacco_and_alcohol_path(assigns(:bsdi_tobacco_and_alcohol))
  end

  test "should show bsdi_tobacco_and_alcohol" do
    get :show, id: @bsdi_tobacco_and_alcohol
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bsdi_tobacco_and_alcohol
    assert_response :success
  end

  test "should update bsdi_tobacco_and_alcohol" do
    patch :update, id: @bsdi_tobacco_and_alcohol, bsdi_tobacco_and_alcohol: { bsdi_alcohol: @bsdi_tobacco_and_alcohol.bsdi_alcohol, bsdi_binge_drinking: @bsdi_tobacco_and_alcohol.bsdi_binge_drinking, bsdi_medication_relax: @bsdi_tobacco_and_alcohol.bsdi_medication_relax, bsdi_report_id: @bsdi_tobacco_and_alcohol.bsdi_report_id, bsdi_tobacco: @bsdi_tobacco_and_alcohol.bsdi_tobacco }
    assert_redirected_to bsdi_tobacco_and_alcohol_path(assigns(:bsdi_tobacco_and_alcohol))
  end

  test "should destroy bsdi_tobacco_and_alcohol" do
    assert_difference('BsdiTobaccoAndAlcohol.count', -1) do
      delete :destroy, id: @bsdi_tobacco_and_alcohol
    end

    assert_redirected_to bsdi_tobacco_and_alcohols_path
  end
end
