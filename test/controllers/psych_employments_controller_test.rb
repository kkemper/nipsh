require 'test_helper'

class PsychEmploymentsControllerTest < ActionController::TestCase
  setup do
    @psych_employment = psych_employments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:psych_employments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create psych_employment" do
    assert_difference('PsychEmployment.count') do
      post :create, psych_employment: { department: @psych_employment.department, position: @psych_employment.position, prior_pub_saf_exprnce: @psych_employment.prior_pub_saf_exprnce, research_id: @psych_employment.research_id, yrs_exprnce_pub_saf: @psych_employment.yrs_exprnce_pub_saf }
    end

    assert_redirected_to psych_employment_path(assigns(:psych_employment))
  end

  test "should show psych_employment" do
    get :show, id: @psych_employment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @psych_employment
    assert_response :success
  end

  test "should update psych_employment" do
    patch :update, id: @psych_employment, psych_employment: { department: @psych_employment.department, position: @psych_employment.position, prior_pub_saf_exprnce: @psych_employment.prior_pub_saf_exprnce, research_id: @psych_employment.research_id, yrs_exprnce_pub_saf: @psych_employment.yrs_exprnce_pub_saf }
    assert_redirected_to psych_employment_path(assigns(:psych_employment))
  end

  test "should destroy psych_employment" do
    assert_difference('PsychEmployment.count', -1) do
      delete :destroy, id: @psych_employment
    end

    assert_redirected_to psych_employments_path
  end
end
