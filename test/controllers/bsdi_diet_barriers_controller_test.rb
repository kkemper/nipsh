require 'test_helper'

class BsdiDietBarriersControllerTest < ActionController::TestCase
  setup do
    @bsdi_diet_barrier = bsdi_diet_barriers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bsdi_diet_barriers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bsdi_diet_barrier" do
    assert_difference('BsdiDietBarrier.count') do
      post :create, bsdi_diet_barrier: { bsdi_diet_barrier_expense: @bsdi_diet_barrier.bsdi_diet_barrier_expense, bsdi_diet_barrier_other: @bsdi_diet_barrier.bsdi_diet_barrier_other, bsdi_diet_barrier_people: @bsdi_diet_barrier.bsdi_diet_barrier_people, bsdi_diet_barrier_taste: @bsdi_diet_barrier.bsdi_diet_barrier_taste, bsdi_diet_barrier_time: @bsdi_diet_barrier.bsdi_diet_barrier_time, bsdi_diet_barrier_unfamililar: @bsdi_diet_barrier.bsdi_diet_barrier_unfamililar, bsdi_report_id: @bsdi_diet_barrier.bsdi_report_id, bsdi_rfc_diet: @bsdi_diet_barrier.bsdi_rfc_diet }
    end

    assert_redirected_to bsdi_diet_barrier_path(assigns(:bsdi_diet_barrier))
  end

  test "should show bsdi_diet_barrier" do
    get :show, id: @bsdi_diet_barrier
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bsdi_diet_barrier
    assert_response :success
  end

  test "should update bsdi_diet_barrier" do
    patch :update, id: @bsdi_diet_barrier, bsdi_diet_barrier: { bsdi_diet_barrier_expense: @bsdi_diet_barrier.bsdi_diet_barrier_expense, bsdi_diet_barrier_other: @bsdi_diet_barrier.bsdi_diet_barrier_other, bsdi_diet_barrier_people: @bsdi_diet_barrier.bsdi_diet_barrier_people, bsdi_diet_barrier_taste: @bsdi_diet_barrier.bsdi_diet_barrier_taste, bsdi_diet_barrier_time: @bsdi_diet_barrier.bsdi_diet_barrier_time, bsdi_diet_barrier_unfamililar: @bsdi_diet_barrier.bsdi_diet_barrier_unfamililar, bsdi_report_id: @bsdi_diet_barrier.bsdi_report_id, bsdi_rfc_diet: @bsdi_diet_barrier.bsdi_rfc_diet }
    assert_redirected_to bsdi_diet_barrier_path(assigns(:bsdi_diet_barrier))
  end

  test "should destroy bsdi_diet_barrier" do
    assert_difference('BsdiDietBarrier.count', -1) do
      delete :destroy, id: @bsdi_diet_barrier
    end

    assert_redirected_to bsdi_diet_barriers_path
  end
end
