require 'test_helper'

class PsychReportsControllerTest < ActionController::TestCase
  setup do
    @psych_report = psych_reports(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:psych_reports)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create psych_report" do
    assert_difference('PsychReport.count') do
      post :create, psych_report: { date_of_evaluation: @psych_report.date_of_evaluation, examiner: @psych_report.examiner, gave_consent: @psych_report.gave_consent, grade: @psych_report.grade, research_id: @psych_report.research_id }
    end

    assert_redirected_to psych_report_path(assigns(:psych_report))
  end

  test "should show psych_report" do
    get :show, id: @psych_report
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @psych_report
    assert_response :success
  end

  test "should update psych_report" do
    patch :update, id: @psych_report, psych_report: { date_of_evaluation: @psych_report.date_of_evaluation, examiner: @psych_report.examiner, gave_consent: @psych_report.gave_consent, grade: @psych_report.grade, research_id: @psych_report.research_id }
    assert_redirected_to psych_report_path(assigns(:psych_report))
  end

  test "should destroy psych_report" do
    assert_difference('PsychReport.count', -1) do
      delete :destroy, id: @psych_report
    end

    assert_redirected_to psych_reports_path
  end
end
