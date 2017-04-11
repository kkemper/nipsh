require 'test_helper'

class OhmImmunesControllerTest < ActionController::TestCase
  setup do
    @ohm_immune = ohm_immunes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ohm_immunes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ohm_immune" do
    assert_difference('OhmImmune.count') do
      post :create, ohm_immune: { moddate: @ohm_immune.moddate, ohm_immune_note: @ohm_immune.ohm_immune_note, ohm_immune_type: @ohm_immune.ohm_immune_type, ssn: @ohm_immune.ssn }
    end

    assert_redirected_to ohm_immune_path(assigns(:ohm_immune))
  end

  test "should show ohm_immune" do
    get :show, id: @ohm_immune
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ohm_immune
    assert_response :success
  end

  test "should update ohm_immune" do
    patch :update, id: @ohm_immune, ohm_immune: { moddate: @ohm_immune.moddate, ohm_immune_note: @ohm_immune.ohm_immune_note, ohm_immune_type: @ohm_immune.ohm_immune_type, ssn: @ohm_immune.ssn }
    assert_redirected_to ohm_immune_path(assigns(:ohm_immune))
  end

  test "should destroy ohm_immune" do
    assert_difference('OhmImmune.count', -1) do
      delete :destroy, id: @ohm_immune
    end

    assert_redirected_to ohm_immunes_path
  end
end
