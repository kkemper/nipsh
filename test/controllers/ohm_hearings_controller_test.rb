require 'test_helper'

class OhmHearingsControllerTest < ActionController::TestCase
  setup do
    @ohm_hearing = ohm_hearings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ohm_hearings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ohm_hearing" do
    assert_difference('OhmHearing.count') do
      post :create, ohm_hearing: { moddate: @ohm_hearing.moddate, ohm_L500k: @ohm_hearing.ohm_L500k, ohm_R500k: @ohm_hearing.ohm_R500k, ohm_l1k: @ohm_hearing.ohm_l1k, ohm_l2k: @ohm_hearing.ohm_l2k, ohm_l3k: @ohm_hearing.ohm_l3k, ohm_l4k: @ohm_hearing.ohm_l4k, ohm_l6k: @ohm_hearing.ohm_l6k, ohm_l8k: @ohm_hearing.ohm_l8k, ohm_r1k: @ohm_hearing.ohm_r1k, ohm_r2k: @ohm_hearing.ohm_r2k, ohm_r3k: @ohm_hearing.ohm_r3k, ohm_r4k: @ohm_hearing.ohm_r4k, ohm_r6k: @ohm_hearing.ohm_r6k, ohm_r8k: @ohm_hearing.ohm_r8k, ssn: @ohm_hearing.ssn }
    end

    assert_redirected_to ohm_hearing_path(assigns(:ohm_hearing))
  end

  test "should show ohm_hearing" do
    get :show, id: @ohm_hearing
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ohm_hearing
    assert_response :success
  end

  test "should update ohm_hearing" do
    patch :update, id: @ohm_hearing, ohm_hearing: { moddate: @ohm_hearing.moddate, ohm_L500k: @ohm_hearing.ohm_L500k, ohm_R500k: @ohm_hearing.ohm_R500k, ohm_l1k: @ohm_hearing.ohm_l1k, ohm_l2k: @ohm_hearing.ohm_l2k, ohm_l3k: @ohm_hearing.ohm_l3k, ohm_l4k: @ohm_hearing.ohm_l4k, ohm_l6k: @ohm_hearing.ohm_l6k, ohm_l8k: @ohm_hearing.ohm_l8k, ohm_r1k: @ohm_hearing.ohm_r1k, ohm_r2k: @ohm_hearing.ohm_r2k, ohm_r3k: @ohm_hearing.ohm_r3k, ohm_r4k: @ohm_hearing.ohm_r4k, ohm_r6k: @ohm_hearing.ohm_r6k, ohm_r8k: @ohm_hearing.ohm_r8k, ssn: @ohm_hearing.ssn }
    assert_redirected_to ohm_hearing_path(assigns(:ohm_hearing))
  end

  test "should destroy ohm_hearing" do
    assert_difference('OhmHearing.count', -1) do
      delete :destroy, id: @ohm_hearing
    end

    assert_redirected_to ohm_hearings_path
  end
end
