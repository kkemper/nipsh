require 'test_helper'

class FitnessPatientsControllerTest < ActionController::TestCase
  setup do
    @fitness_patient = fitness_patients(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fitness_patients)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fitness_patient" do
    assert_difference('FitnessPatient.count') do
      post :create, fitness_patient: { fitness_dept: @fitness_patient.fitness_dept, fitness_fname: @fitness_patient.fitness_fname, fitness_gender: @fitness_patient.fitness_gender, fitness_lname: @fitness_patient.fitness_lname, fitness_patient_id: @fitness_patient.fitness_patient_id }
    end

    assert_redirected_to fitness_patient_path(assigns(:fitness_patient))
  end

  test "should show fitness_patient" do
    get :show, id: @fitness_patient
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fitness_patient
    assert_response :success
  end

  test "should update fitness_patient" do
    patch :update, id: @fitness_patient, fitness_patient: { fitness_dept: @fitness_patient.fitness_dept, fitness_fname: @fitness_patient.fitness_fname, fitness_gender: @fitness_patient.fitness_gender, fitness_lname: @fitness_patient.fitness_lname, fitness_patient_id: @fitness_patient.fitness_patient_id }
    assert_redirected_to fitness_patient_path(assigns(:fitness_patient))
  end

  test "should destroy fitness_patient" do
    assert_difference('FitnessPatient.count', -1) do
      delete :destroy, id: @fitness_patient
    end

    assert_redirected_to fitness_patients_path
  end
end
