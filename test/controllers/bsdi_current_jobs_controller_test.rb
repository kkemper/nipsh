require 'test_helper'

class BsdiCurrentJobsControllerTest < ActionController::TestCase
  setup do
    @bsdi_current_job = bsdi_current_jobs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bsdi_current_jobs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bsdi_current_job" do
    assert_difference('BsdiCurrentJob.count') do
      post :create, bsdi_current_job: { bsdi_department: @bsdi_current_job.bsdi_department, bsdi_job_title: @bsdi_current_job.bsdi_job_title, bsdi_organization: @bsdi_current_job.bsdi_organization, bsdi_report_id: @bsdi_current_job.bsdi_report_id, bsdi_service: @bsdi_current_job.bsdi_service }
    end

    assert_redirected_to bsdi_current_job_path(assigns(:bsdi_current_job))
  end

  test "should show bsdi_current_job" do
    get :show, id: @bsdi_current_job
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bsdi_current_job
    assert_response :success
  end

  test "should update bsdi_current_job" do
    patch :update, id: @bsdi_current_job, bsdi_current_job: { bsdi_department: @bsdi_current_job.bsdi_department, bsdi_job_title: @bsdi_current_job.bsdi_job_title, bsdi_organization: @bsdi_current_job.bsdi_organization, bsdi_report_id: @bsdi_current_job.bsdi_report_id, bsdi_service: @bsdi_current_job.bsdi_service }
    assert_redirected_to bsdi_current_job_path(assigns(:bsdi_current_job))
  end

  test "should destroy bsdi_current_job" do
    assert_difference('BsdiCurrentJob.count', -1) do
      delete :destroy, id: @bsdi_current_job
    end

    assert_redirected_to bsdi_current_jobs_path
  end
end
