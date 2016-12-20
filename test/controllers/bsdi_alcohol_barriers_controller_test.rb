require 'test_helper'

class BsdiAlcoholBarriersControllerTest < ActionController::TestCase
  setup do
    @bsdi_alcohol_barrier = bsdi_alcohol_barriers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bsdi_alcohol_barriers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bsdi_alcohol_barrier" do
    assert_difference('BsdiAlcoholBarrier.count') do
      post :create, bsdi_alcohol_barrier: { bsdi_alcohol_barrier_friends: @bsdi_alcohol_barrier.bsdi_alcohol_barrier_friends, bsdi_alcohol_barrier_knowledge: @bsdi_alcohol_barrier.bsdi_alcohol_barrier_knowledge, bsdi_alcohol_barrier_other: @bsdi_alcohol_barrier.bsdi_alcohol_barrier_other, bsdi_alcohol_barrier_perception: @bsdi_alcohol_barrier.bsdi_alcohol_barrier_perception, bsdi_alcohol_barrier_stress: @bsdi_alcohol_barrier.bsdi_alcohol_barrier_stress, bsdi_alcohol_barrier_temptation: @bsdi_alcohol_barrier.bsdi_alcohol_barrier_temptation, bsdi_report_id: @bsdi_alcohol_barrier.bsdi_report_id, bsdi_rfc_alcohol: @bsdi_alcohol_barrier.bsdi_rfc_alcohol }
    end

    assert_redirected_to bsdi_alcohol_barrier_path(assigns(:bsdi_alcohol_barrier))
  end

  test "should show bsdi_alcohol_barrier" do
    get :show, id: @bsdi_alcohol_barrier
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bsdi_alcohol_barrier
    assert_response :success
  end

  test "should update bsdi_alcohol_barrier" do
    patch :update, id: @bsdi_alcohol_barrier, bsdi_alcohol_barrier: { bsdi_alcohol_barrier_friends: @bsdi_alcohol_barrier.bsdi_alcohol_barrier_friends, bsdi_alcohol_barrier_knowledge: @bsdi_alcohol_barrier.bsdi_alcohol_barrier_knowledge, bsdi_alcohol_barrier_other: @bsdi_alcohol_barrier.bsdi_alcohol_barrier_other, bsdi_alcohol_barrier_perception: @bsdi_alcohol_barrier.bsdi_alcohol_barrier_perception, bsdi_alcohol_barrier_stress: @bsdi_alcohol_barrier.bsdi_alcohol_barrier_stress, bsdi_alcohol_barrier_temptation: @bsdi_alcohol_barrier.bsdi_alcohol_barrier_temptation, bsdi_report_id: @bsdi_alcohol_barrier.bsdi_report_id, bsdi_rfc_alcohol: @bsdi_alcohol_barrier.bsdi_rfc_alcohol }
    assert_redirected_to bsdi_alcohol_barrier_path(assigns(:bsdi_alcohol_barrier))
  end

  test "should destroy bsdi_alcohol_barrier" do
    assert_difference('BsdiAlcoholBarrier.count', -1) do
      delete :destroy, id: @bsdi_alcohol_barrier
    end

    assert_redirected_to bsdi_alcohol_barriers_path
  end
end
