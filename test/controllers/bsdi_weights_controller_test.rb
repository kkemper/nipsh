require 'test_helper'

class BsdiWeightsControllerTest < ActionController::TestCase
  setup do
    @bsdi_weight = bsdi_weights(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bsdi_weights)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bsdi_weight" do
    assert_difference('BsdiWeight.count') do
      post :create, bsdi_weight: { bsdi_report_id: @bsdi_weight.bsdi_report_id, bsdi_weight_barrier_access: @bsdi_weight.bsdi_weight_barrier_access, bsdi_weight_barrier_exercise: @bsdi_weight.bsdi_weight_barrier_exercise, bsdi_weight_barrier_knowledge: @bsdi_weight.bsdi_weight_barrier_knowledge, bsdi_weight_barrier_social: @bsdi_weight.bsdi_weight_barrier_social, bsdi_weight_barrier_stress: @bsdi_weight.bsdi_weight_barrier_stress, rfc_weight: @bsdi_weight.rfc_weight }
    end

    assert_redirected_to bsdi_weight_path(assigns(:bsdi_weight))
  end

  test "should show bsdi_weight" do
    get :show, id: @bsdi_weight
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bsdi_weight
    assert_response :success
  end

  test "should update bsdi_weight" do
    patch :update, id: @bsdi_weight, bsdi_weight: { bsdi_report_id: @bsdi_weight.bsdi_report_id, bsdi_weight_barrier_access: @bsdi_weight.bsdi_weight_barrier_access, bsdi_weight_barrier_exercise: @bsdi_weight.bsdi_weight_barrier_exercise, bsdi_weight_barrier_knowledge: @bsdi_weight.bsdi_weight_barrier_knowledge, bsdi_weight_barrier_social: @bsdi_weight.bsdi_weight_barrier_social, bsdi_weight_barrier_stress: @bsdi_weight.bsdi_weight_barrier_stress, rfc_weight: @bsdi_weight.rfc_weight }
    assert_redirected_to bsdi_weight_path(assigns(:bsdi_weight))
  end

  test "should destroy bsdi_weight" do
    assert_difference('BsdiWeight.count', -1) do
      delete :destroy, id: @bsdi_weight
    end

    assert_redirected_to bsdi_weights_path
  end
end
