require 'test_helper'

class MdsPatientsControllerTest < ActionController::TestCase
  setup do
    @mds_patient = mds_patients(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mds_patients)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mds_patient" do
    assert_difference('MdsPatient.count') do
      post :create, mds_patient: { employeeid: @mds_patient.employeeid, fname: @mds_patient.fname, gender: @mds_patient.gender, lname: @mds_patient.lname, mname: @mds_patient.mname, ssn: @mds_patient.ssn }
    end

    assert_redirected_to mds_patient_path(assigns(:mds_patient))
  end

  test "should show mds_patient" do
    get :show, id: @mds_patient
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mds_patient
    assert_response :success
  end

  test "should update mds_patient" do
    patch :update, id: @mds_patient, mds_patient: { employeeid: @mds_patient.employeeid, fname: @mds_patient.fname, gender: @mds_patient.gender, lname: @mds_patient.lname, mname: @mds_patient.mname, ssn: @mds_patient.ssn }
    assert_redirected_to mds_patient_path(assigns(:mds_patient))
  end

  test "should destroy mds_patient" do
    assert_difference('MdsPatient.count', -1) do
      delete :destroy, id: @mds_patient
    end

    assert_redirected_to mds_patients_path
  end
end
