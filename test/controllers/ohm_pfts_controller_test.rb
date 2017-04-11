require 'test_helper'

class OhmPftsControllerTest < ActionController::TestCase
  setup do
    @ohm_pft = ohm_pfts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ohm_pfts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ohm_pft" do
    assert_difference('OhmPft.count') do
      post :create, ohm_pft: { moddate: @ohm_pft.moddate, ohm_bp: @ohm_pft.ohm_bp, ohm_fev1: @ohm_pft.ohm_fev1, ohm_fev1fvc: @ohm_pft.ohm_fev1fvc, ohm_fev1pr: @ohm_pft.ohm_fev1pr, ohm_fvc: @ohm_pft.ohm_fvc, ohm_fvcpr: @ohm_pft.ohm_fvcpr, ohm_height: @ohm_pft.ohm_height, ohm_weight: @ohm_pft.ohm_weight, ssn: @ohm_pft.ssn }
    end

    assert_redirected_to ohm_pft_path(assigns(:ohm_pft))
  end

  test "should show ohm_pft" do
    get :show, id: @ohm_pft
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ohm_pft
    assert_response :success
  end

  test "should update ohm_pft" do
    patch :update, id: @ohm_pft, ohm_pft: { moddate: @ohm_pft.moddate, ohm_bp: @ohm_pft.ohm_bp, ohm_fev1: @ohm_pft.ohm_fev1, ohm_fev1fvc: @ohm_pft.ohm_fev1fvc, ohm_fev1pr: @ohm_pft.ohm_fev1pr, ohm_fvc: @ohm_pft.ohm_fvc, ohm_fvcpr: @ohm_pft.ohm_fvcpr, ohm_height: @ohm_pft.ohm_height, ohm_weight: @ohm_pft.ohm_weight, ssn: @ohm_pft.ssn }
    assert_redirected_to ohm_pft_path(assigns(:ohm_pft))
  end

  test "should destroy ohm_pft" do
    assert_difference('OhmPft.count', -1) do
      delete :destroy, id: @ohm_pft
    end

    assert_redirected_to ohm_pfts_path
  end
end
