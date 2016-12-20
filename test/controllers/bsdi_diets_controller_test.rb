require 'test_helper'

class BsdiDietsControllerTest < ActionController::TestCase
  setup do
    @bsdi_diet = bsdi_diets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bsdi_diets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bsdi_diet" do
    assert_difference('BsdiDiet.count') do
      post :create, bsdi_diet: { bsdi_breakfast: @bsdi_diet.bsdi_breakfast, bsdi_dairy: @bsdi_diet.bsdi_dairy, bsdi_dairy_emphasis: @bsdi_diet.bsdi_dairy_emphasis, bsdi_fats_and_oils: @bsdi_diet.bsdi_fats_and_oils, bsdi_fruits: @bsdi_diet.bsdi_fruits, bsdi_grain_emphasis: @bsdi_diet.bsdi_grain_emphasis, bsdi_grains: @bsdi_diet.bsdi_grains, bsdi_lean_meat: @bsdi_diet.bsdi_lean_meat, bsdi_nut_missing_values: @bsdi_diet.bsdi_nut_missing_values, bsdi_nutrition_status: @bsdi_diet.bsdi_nutrition_status, bsdi_red_meat: @bsdi_diet.bsdi_red_meat, bsdi_report_id: @bsdi_diet.bsdi_report_id, bsdi_vegetables: @bsdi_diet.bsdi_vegetables }
    end

    assert_redirected_to bsdi_diet_path(assigns(:bsdi_diet))
  end

  test "should show bsdi_diet" do
    get :show, id: @bsdi_diet
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bsdi_diet
    assert_response :success
  end

  test "should update bsdi_diet" do
    patch :update, id: @bsdi_diet, bsdi_diet: { bsdi_breakfast: @bsdi_diet.bsdi_breakfast, bsdi_dairy: @bsdi_diet.bsdi_dairy, bsdi_dairy_emphasis: @bsdi_diet.bsdi_dairy_emphasis, bsdi_fats_and_oils: @bsdi_diet.bsdi_fats_and_oils, bsdi_fruits: @bsdi_diet.bsdi_fruits, bsdi_grain_emphasis: @bsdi_diet.bsdi_grain_emphasis, bsdi_grains: @bsdi_diet.bsdi_grains, bsdi_lean_meat: @bsdi_diet.bsdi_lean_meat, bsdi_nut_missing_values: @bsdi_diet.bsdi_nut_missing_values, bsdi_nutrition_status: @bsdi_diet.bsdi_nutrition_status, bsdi_red_meat: @bsdi_diet.bsdi_red_meat, bsdi_report_id: @bsdi_diet.bsdi_report_id, bsdi_vegetables: @bsdi_diet.bsdi_vegetables }
    assert_redirected_to bsdi_diet_path(assigns(:bsdi_diet))
  end

  test "should destroy bsdi_diet" do
    assert_difference('BsdiDiet.count', -1) do
      delete :destroy, id: @bsdi_diet
    end

    assert_redirected_to bsdi_diets_path
  end
end
