require 'test_helper'

class BsdiPatientsControllerTest < ActionController::TestCase
  setup do
    @bsdi_patient = bsdi_patients(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bsdi_patients)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bsdi_patient" do
    assert_difference('BsdiPatient.count') do
      post :create, bsdi_patient: { bsdi_birthdate: @bsdi_patient.bsdi_birthdate, bsdi_fname: @bsdi_patient.bsdi_fname, bsdi_gender: @bsdi_patient.bsdi_gender, bsdi_id: @bsdi_patient.bsdi_id, bsdi_lname: @bsdi_patient.bsdi_lname, bsdi_previous_id: @bsdi_patient.bsdi_previous_id, bsdi_psmid: @bsdi_patient.bsdi_psmid }
    end

    assert_redirected_to bsdi_patient_path(assigns(:bsdi_patient))
  end

  test "should show bsdi_patient" do
    get :show, id: @bsdi_patient
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bsdi_patient
    assert_response :success
  end

  test "should update bsdi_patient" do
    patch :update, id: @bsdi_patient, bsdi_patient: { bsdi_birthdate: @bsdi_patient.bsdi_birthdate, bsdi_fname: @bsdi_patient.bsdi_fname, bsdi_gender: @bsdi_patient.bsdi_gender, bsdi_id: @bsdi_patient.bsdi_id, bsdi_lname: @bsdi_patient.bsdi_lname, bsdi_previous_id: @bsdi_patient.bsdi_previous_id, bsdi_psmid: @bsdi_patient.bsdi_psmid }
    assert_redirected_to bsdi_patient_path(assigns(:bsdi_patient))
  end

  test "should destroy bsdi_patient" do
    assert_difference('BsdiPatient.count', -1) do
      delete :destroy, id: @bsdi_patient
    end

    assert_redirected_to bsdi_patients_path
  end
end
