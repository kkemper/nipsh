require 'test_helper'

class BsdiSmokingBarriersControllerTest < ActionController::TestCase
  setup do
    @bsdi_smoking_barrier = bsdi_smoking_barriers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bsdi_smoking_barriers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bsdi_smoking_barrier" do
    assert_difference('BsdiSmokingBarrier.count') do
      post :create, bsdi_smoking_barrier: { bsdi_report_id: @bsdi_smoking_barrier.bsdi_report_id, bsdi_rfc_smoking: @bsdi_smoking_barrier.bsdi_rfc_smoking, bsdi_smoke_barrier_friends: @bsdi_smoking_barrier.bsdi_smoke_barrier_friends, bsdi_smoke_barrier_knowledge: @bsdi_smoking_barrier.bsdi_smoke_barrier_knowledge, bsdi_smoke_barrier_other: @bsdi_smoking_barrier.bsdi_smoke_barrier_other, bsdi_smoke_barrier_stress: @bsdi_smoking_barrier.bsdi_smoke_barrier_stress, bsdi_smoke_barrier_temptation: @bsdi_smoking_barrier.bsdi_smoke_barrier_temptation, bsdi_smoke_barrier_weight: @bsdi_smoking_barrier.bsdi_smoke_barrier_weight }
    end

    assert_redirected_to bsdi_smoking_barrier_path(assigns(:bsdi_smoking_barrier))
  end

  test "should show bsdi_smoking_barrier" do
    get :show, id: @bsdi_smoking_barrier
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bsdi_smoking_barrier
    assert_response :success
  end

  test "should update bsdi_smoking_barrier" do
    patch :update, id: @bsdi_smoking_barrier, bsdi_smoking_barrier: { bsdi_report_id: @bsdi_smoking_barrier.bsdi_report_id, bsdi_rfc_smoking: @bsdi_smoking_barrier.bsdi_rfc_smoking, bsdi_smoke_barrier_friends: @bsdi_smoking_barrier.bsdi_smoke_barrier_friends, bsdi_smoke_barrier_knowledge: @bsdi_smoking_barrier.bsdi_smoke_barrier_knowledge, bsdi_smoke_barrier_other: @bsdi_smoking_barrier.bsdi_smoke_barrier_other, bsdi_smoke_barrier_stress: @bsdi_smoking_barrier.bsdi_smoke_barrier_stress, bsdi_smoke_barrier_temptation: @bsdi_smoking_barrier.bsdi_smoke_barrier_temptation, bsdi_smoke_barrier_weight: @bsdi_smoking_barrier.bsdi_smoke_barrier_weight }
    assert_redirected_to bsdi_smoking_barrier_path(assigns(:bsdi_smoking_barrier))
  end

  test "should destroy bsdi_smoking_barrier" do
    assert_difference('BsdiSmokingBarrier.count', -1) do
      delete :destroy, id: @bsdi_smoking_barrier
    end

    assert_redirected_to bsdi_smoking_barriers_path
  end
end
