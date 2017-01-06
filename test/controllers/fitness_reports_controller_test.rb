require 'test_helper'

class FitnessReportsControllerTest < ActionController::TestCase
  setup do
    @fitness_report = fitness_reports(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fitness_reports)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fitness_report" do
    assert_difference('FitnessReport.count') do
      post :create, fitness_report: { fitness_patient_id: @fitness_report.fitness_patient_id, fitness_report_id: @fitness_report.fitness_report_id, fitness_test_date: @fitness_report.fitness_test_date }
    end

    assert_redirected_to fitness_report_path(assigns(:fitness_report))
  end

  test "should show fitness_report" do
    get :show, id: @fitness_report
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fitness_report
    assert_response :success
  end

  test "should update fitness_report" do
    patch :update, id: @fitness_report, fitness_report: { fitness_patient_id: @fitness_report.fitness_patient_id, fitness_report_id: @fitness_report.fitness_report_id, fitness_test_date: @fitness_report.fitness_test_date }
    assert_redirected_to fitness_report_path(assigns(:fitness_report))
  end

  test "should destroy fitness_report" do
    assert_difference('FitnessReport.count', -1) do
      delete :destroy, id: @fitness_report
    end

    assert_redirected_to fitness_reports_path
  end
end
