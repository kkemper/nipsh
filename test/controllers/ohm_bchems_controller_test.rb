require 'test_helper'

class OhmBchemsControllerTest < ActionController::TestCase
  setup do
    @ohm_bchem = ohm_bchems(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ohm_bchems)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ohm_bchem" do
    assert_difference('OhmBchem.count') do
      post :create, ohm_bchem: { moddate: @ohm_bchem.moddate, ohm_bun: @ohm_bchem.ohm_bun, ohm_chol: @ohm_bchem.ohm_chol, ohm_creatinine: @ohm_bchem.ohm_creatinine, ohm_glucose: @ohm_bchem.ohm_glucose, ohm_hdl: @ohm_bchem.ohm_hdl, ohm_ldh: @ohm_bchem.ohm_ldh, ohm_ldl: @ohm_bchem.ohm_ldl, ohm_sgot: @ohm_bchem.ohm_sgot, ohm_sgpt: @ohm_bchem.ohm_sgpt, ohm_trigly: @ohm_bchem.ohm_trigly, ssn: @ohm_bchem.ssn }
    end

    assert_redirected_to ohm_bchem_path(assigns(:ohm_bchem))
  end

  test "should show ohm_bchem" do
    get :show, id: @ohm_bchem
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ohm_bchem
    assert_response :success
  end

  test "should update ohm_bchem" do
    patch :update, id: @ohm_bchem, ohm_bchem: { moddate: @ohm_bchem.moddate, ohm_bun: @ohm_bchem.ohm_bun, ohm_chol: @ohm_bchem.ohm_chol, ohm_creatinine: @ohm_bchem.ohm_creatinine, ohm_glucose: @ohm_bchem.ohm_glucose, ohm_hdl: @ohm_bchem.ohm_hdl, ohm_ldh: @ohm_bchem.ohm_ldh, ohm_ldl: @ohm_bchem.ohm_ldl, ohm_sgot: @ohm_bchem.ohm_sgot, ohm_sgpt: @ohm_bchem.ohm_sgpt, ohm_trigly: @ohm_bchem.ohm_trigly, ssn: @ohm_bchem.ssn }
    assert_redirected_to ohm_bchem_path(assigns(:ohm_bchem))
  end

  test "should destroy ohm_bchem" do
    assert_difference('OhmBchem.count', -1) do
      delete :destroy, id: @ohm_bchem
    end

    assert_redirected_to ohm_bchems_path
  end
end
