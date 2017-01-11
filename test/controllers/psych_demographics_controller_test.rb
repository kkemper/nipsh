require 'test_helper'

class PsychDemographicsControllerTest < ActionController::TestCase
  setup do
    @psych_demographic = psych_demographics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:psych_demographics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create psych_demographic" do
    assert_difference('PsychDemographic.count') do
      post :create, psych_demographic: { age: @psych_demographic.age, ethnicity: @psych_demographic.ethnicity, gender: @psych_demographic.gender, research_id: @psych_demographic.research_id }
    end

    assert_redirected_to psych_demographic_path(assigns(:psych_demographic))
  end

  test "should show psych_demographic" do
    get :show, id: @psych_demographic
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @psych_demographic
    assert_response :success
  end

  test "should update psych_demographic" do
    patch :update, id: @psych_demographic, psych_demographic: { age: @psych_demographic.age, ethnicity: @psych_demographic.ethnicity, gender: @psych_demographic.gender, research_id: @psych_demographic.research_id }
    assert_redirected_to psych_demographic_path(assigns(:psych_demographic))
  end

  test "should destroy psych_demographic" do
    assert_difference('PsychDemographic.count', -1) do
      delete :destroy, id: @psych_demographic
    end

    assert_redirected_to psych_demographics_path
  end
end
