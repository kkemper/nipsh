require 'test_helper'

class BsdiDiseasesControllerTest < ActionController::TestCase
  setup do
    @bsdi_disease = bsdi_diseases(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bsdi_diseases)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bsdi_disease" do
    assert_difference('BsdiDisease.count') do
      post :create, bsdi_disease: { bsdi_allergies: @bsdi_disease.bsdi_allergies, bsdi_ankle_edema: @bsdi_disease.bsdi_ankle_edema, bsdi_anxiety: @bsdi_disease.bsdi_anxiety, bsdi_arthritis: @bsdi_disease.bsdi_arthritis, bsdi_asthma: @bsdi_disease.bsdi_asthma, bsdi_auto_immune: @bsdi_disease.bsdi_auto_immune, bsdi_back_pain: @bsdi_disease.bsdi_back_pain, bsdi_cancer: @bsdi_disease.bsdi_cancer, bsdi_chd_risk: @bsdi_disease.bsdi_chd_risk, bsdi_chest_pain: @bsdi_disease.bsdi_chest_pain, bsdi_depression: @bsdi_disease.bsdi_depression, bsdi_diabetes: @bsdi_disease.bsdi_diabetes, bsdi_diabetes_type1: @bsdi_disease.bsdi_diabetes_type1, bsdi_digestive: @bsdi_disease.bsdi_digestive, bsdi_dizziness: @bsdi_disease.bsdi_dizziness, bsdi_family_chd: @bsdi_disease.bsdi_family_chd, bsdi_has_disease: @bsdi_disease.bsdi_has_disease, bsdi_heart_disease: @bsdi_disease.bsdi_heart_disease, bsdi_heart_flutter: @bsdi_disease.bsdi_heart_flutter, bsdi_heart_meds: @bsdi_disease.bsdi_heart_meds, bsdi_heart_murmur: @bsdi_disease.bsdi_heart_murmur, bsdi_hypertension: @bsdi_disease.bsdi_hypertension, bsdi_leg_pain: @bsdi_disease.bsdi_leg_pain, bsdi_mental: @bsdi_disease.bsdi_mental, bsdi_metabolic: @bsdi_disease.bsdi_metabolic, bsdi_migraines_headaches: @bsdi_disease.bsdi_migraines_headaches, bsdi_musculoskeletal_problems: @bsdi_disease.bsdi_musculoskeletal_problems, bsdi_neck_pain: @bsdi_disease.bsdi_neck_pain, bsdi_orthopnea: @bsdi_disease.bsdi_orthopnea, bsdi_periphvasc: @bsdi_disease.bsdi_periphvasc, bsdi_pregnancy: @bsdi_disease.bsdi_pregnancy, bsdi_pulmonary: @bsdi_disease.bsdi_pulmonary, bsdi_report_id: @bsdi_disease.bsdi_report_id, bsdi_respiratory: @bsdi_disease.bsdi_respiratory, bsdi_seizures: @bsdi_disease.bsdi_seizures, bsdi_shortbreath: @bsdi_disease.bsdi_shortbreath, bsdi_stroke: @bsdi_disease.bsdi_stroke }
    end

    assert_redirected_to bsdi_disease_path(assigns(:bsdi_disease))
  end

  test "should show bsdi_disease" do
    get :show, id: @bsdi_disease
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bsdi_disease
    assert_response :success
  end

  test "should update bsdi_disease" do
    patch :update, id: @bsdi_disease, bsdi_disease: { bsdi_allergies: @bsdi_disease.bsdi_allergies, bsdi_ankle_edema: @bsdi_disease.bsdi_ankle_edema, bsdi_anxiety: @bsdi_disease.bsdi_anxiety, bsdi_arthritis: @bsdi_disease.bsdi_arthritis, bsdi_asthma: @bsdi_disease.bsdi_asthma, bsdi_auto_immune: @bsdi_disease.bsdi_auto_immune, bsdi_back_pain: @bsdi_disease.bsdi_back_pain, bsdi_cancer: @bsdi_disease.bsdi_cancer, bsdi_chd_risk: @bsdi_disease.bsdi_chd_risk, bsdi_chest_pain: @bsdi_disease.bsdi_chest_pain, bsdi_depression: @bsdi_disease.bsdi_depression, bsdi_diabetes: @bsdi_disease.bsdi_diabetes, bsdi_diabetes_type1: @bsdi_disease.bsdi_diabetes_type1, bsdi_digestive: @bsdi_disease.bsdi_digestive, bsdi_dizziness: @bsdi_disease.bsdi_dizziness, bsdi_family_chd: @bsdi_disease.bsdi_family_chd, bsdi_has_disease: @bsdi_disease.bsdi_has_disease, bsdi_heart_disease: @bsdi_disease.bsdi_heart_disease, bsdi_heart_flutter: @bsdi_disease.bsdi_heart_flutter, bsdi_heart_meds: @bsdi_disease.bsdi_heart_meds, bsdi_heart_murmur: @bsdi_disease.bsdi_heart_murmur, bsdi_hypertension: @bsdi_disease.bsdi_hypertension, bsdi_leg_pain: @bsdi_disease.bsdi_leg_pain, bsdi_mental: @bsdi_disease.bsdi_mental, bsdi_metabolic: @bsdi_disease.bsdi_metabolic, bsdi_migraines_headaches: @bsdi_disease.bsdi_migraines_headaches, bsdi_musculoskeletal_problems: @bsdi_disease.bsdi_musculoskeletal_problems, bsdi_neck_pain: @bsdi_disease.bsdi_neck_pain, bsdi_orthopnea: @bsdi_disease.bsdi_orthopnea, bsdi_periphvasc: @bsdi_disease.bsdi_periphvasc, bsdi_pregnancy: @bsdi_disease.bsdi_pregnancy, bsdi_pulmonary: @bsdi_disease.bsdi_pulmonary, bsdi_report_id: @bsdi_disease.bsdi_report_id, bsdi_respiratory: @bsdi_disease.bsdi_respiratory, bsdi_seizures: @bsdi_disease.bsdi_seizures, bsdi_shortbreath: @bsdi_disease.bsdi_shortbreath, bsdi_stroke: @bsdi_disease.bsdi_stroke }
    assert_redirected_to bsdi_disease_path(assigns(:bsdi_disease))
  end

  test "should destroy bsdi_disease" do
    assert_difference('BsdiDisease.count', -1) do
      delete :destroy, id: @bsdi_disease
    end

    assert_redirected_to bsdi_diseases_path
  end
end
