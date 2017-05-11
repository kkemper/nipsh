# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170511172122) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "bsdi_activities", force: :cascade do |t|
    t.string   "bsdi_report_id"
    t.integer  "bsdi_rfc_activity"
    t.boolean  "bsdi_active_barrier_time"
    t.boolean  "bsdi_active_barrier_people"
    t.boolean  "bsdi_active_barrier_unfamiliar"
    t.boolean  "bsdi_active_barrier_resources"
    t.boolean  "bsdi_active_barrier_unpleasant"
    t.boolean  "bsdi_active_barrier_medical_worry"
    t.boolean  "bsdi_active_barrier_intimidating"
    t.boolean  "bsdi_active_barrier_embarrassed"
    t.boolean  "bsdi_active_barrier_other"
    t.boolean  "bsdi_active_barrier_injury"
    t.datetime "created_at",                        default: "now()", null: false
    t.datetime "updated_at",                        default: "now()", null: false
  end

  create_table "bsdi_alcohol_barriers", force: :cascade do |t|
    t.string   "bsdi_report_id"
    t.integer  "bsdi_rfc_alcohol"
    t.boolean  "bsdi_alcohol_barrier_knowledge"
    t.boolean  "bsdi_alcohol_barrier_temptation"
    t.boolean  "bsdi_alcohol_barrier_friends"
    t.boolean  "bsdi_alcohol_barrier_perception"
    t.boolean  "bsdi_alcohol_barrier_stress"
    t.boolean  "bsdi_alcohol_barrier_other"
    t.datetime "created_at",                      default: "now()"
    t.datetime "updated_at",                      default: "now()"
  end

  create_table "bsdi_annuals", force: :cascade do |t|
    t.string   "bsdi_report_id"
    t.integer  "bsdi_see_doctor"
    t.integer  "bsdi_see_dentist"
    t.integer  "bsdi_check_bp"
    t.integer  "bsdi_check_chol"
    t.integer  "bsdi_colonoscopy"
    t.integer  "bsdi_papsmear"
    t.integer  "bsdi_mammogram"
    t.integer  "bsdi_prostate"
    t.integer  "bsdi_breast_exam"
    t.integer  "bsdi_testicular_exam"
    t.integer  "bsdi_flu_shot"
    t.integer  "bsdi_physician_visits"
    t.integer  "bsdi_hospital_visits"
    t.integer  "bsdi_emergency_room"
    t.integer  "bsdi_high_absenteeism"
    t.integer  "bsdi_seat_belt"
    t.datetime "created_at",            default: "now()", null: false
    t.datetime "updated_at",            default: "now()", null: false
  end

  create_table "bsdi_blood_chemistries", force: :cascade do |t|
    t.string   "bsdi_report_id"
    t.date     "bsdi_bchem_date"
    t.integer  "bsdi_cholesterol"
    t.boolean  "bsdi_high_cholesterol"
    t.boolean  "bsdi_cholesterol_meds"
    t.integer  "bsdi_hdl"
    t.integer  "bsdi_hdl_status"
    t.integer  "bsdi_ldl"
    t.boolean  "bsdi_high_ldl"
    t.integer  "bsdi_triglycerides"
    t.boolean  "bsdi_high_triglyceride"
    t.integer  "bsdi_glucose"
    t.boolean  "bsdi_pre_diabetes"
    t.integer  "bsdi_a1c"
    t.boolean  "bsdi_blood_chem_risk"
    t.datetime "created_at",             default: "now()", null: false
    t.datetime "updated_at",             default: "now()", null: false
  end

  create_table "bsdi_blood_pressures", force: :cascade do |t|
    t.string   "bsdi_report_id"
    t.integer  "bsdi_systolic"
    t.integer  "bsdi_diastolic"
    t.boolean  "bsdi_bp_medicine"
    t.datetime "created_at",       default: "now()", null: false
    t.datetime "updated_at",       default: "now()", null: false
  end

  create_table "bsdi_current_jobs", force: :cascade do |t|
    t.string   "bsdi_report_id"
    t.string   "bsdi_organization"
    t.string   "bsdi_department"
    t.integer  "bsdi_service"
    t.string   "bsdi_job_title"
    t.datetime "created_at",        default: "now()", null: false
    t.datetime "updated_at",        default: "now()", null: false
  end

  create_table "bsdi_diet_barriers", force: :cascade do |t|
    t.string   "bsdi_report_id"
    t.integer  "bsdi_rfc_diet"
    t.boolean  "bsdi_diet_barrier_unfamililar"
    t.boolean  "bsdi_diet_barrier_time"
    t.boolean  "bsdi_diet_barrier_people"
    t.boolean  "bsdi_diet_barrier_taste"
    t.boolean  "bsdi_diet_barrier_other"
    t.boolean  "bsdi_diet_barrier_expense"
    t.datetime "created_at",                    default: "now()", null: false
    t.datetime "updated_at",                    default: "now()", null: false
  end

  create_table "bsdi_diets", force: :cascade do |t|
    t.string   "bsdi_report_id"
    t.integer  "bsdi_breakfast"
    t.integer  "bsdi_fruits"
    t.integer  "bsdi_vegetables"
    t.integer  "bsdi_grains"
    t.integer  "bsdi_grain_emphasis"
    t.integer  "bsdi_red_meat"
    t.integer  "bsdi_lean_meat"
    t.integer  "bsdi_dairy"
    t.integer  "bsdi_dairy_emphasis"
    t.integer  "bsdi_fats_and_oils"
    t.integer  "bsdi_nutrition_status"
    t.boolean  "bsdi_nut_missing_values"
    t.datetime "created_at",              default: "now()", null: false
    t.datetime "updated_at",              default: "now()", null: false
  end

  create_table "bsdi_diseases", force: :cascade do |t|
    t.string   "bsdi_report_id"
    t.boolean  "bsdi_has_disease"
    t.boolean  "bsdi_heart_disease"
    t.boolean  "bsdi_hypertension"
    t.boolean  "bsdi_diabetes"
    t.boolean  "bsdi_diabetes_type1"
    t.boolean  "bsdi_metabolic"
    t.boolean  "bsdi_cancer"
    t.boolean  "bsdi_auto_immune"
    t.boolean  "bsdi_asthma"
    t.boolean  "bsdi_pulmonary"
    t.boolean  "bsdi_arthritis"
    t.boolean  "bsdi_allergies"
    t.boolean  "bsdi_digestive"
    t.boolean  "bsdi_mental"
    t.boolean  "bsdi_neck_pain"
    t.boolean  "bsdi_back_pain"
    t.boolean  "bsdi_respiratory"
    t.boolean  "bsdi_migraines_headaches"
    t.boolean  "bsdi_depression"
    t.boolean  "bsdi_anxiety"
    t.boolean  "bsdi_musculoskeletal_problems"
    t.boolean  "bsdi_periphvasc"
    t.boolean  "bsdi_seizures"
    t.boolean  "bsdi_stroke"
    t.boolean  "bsdi_pregnancy"
    t.boolean  "bsdi_chest_pain"
    t.boolean  "bsdi_leg_pain"
    t.boolean  "bsdi_dizziness"
    t.boolean  "bsdi_shortbreath"
    t.boolean  "bsdi_orthopnea"
    t.boolean  "bsdi_heart_flutter"
    t.boolean  "bsdi_heart_murmur"
    t.boolean  "bsdi_ankle_edema"
    t.boolean  "bsdi_heart_meds"
    t.integer  "bsdi_family_chd"
    t.boolean  "bsdi_chd_risk"
    t.datetime "created_at",                    default: "now()", null: false
    t.datetime "updated_at",                    default: "now()", null: false
  end

  create_table "bsdi_exercises", force: :cascade do |t|
    t.string   "bsdi_report_id"
    t.integer  "bsdi_exercise"
    t.integer  "bsdi_how_long_active"
    t.boolean  "bsdi_sedentary"
    t.boolean  "bsdi_hip_knee_problems"
    t.boolean  "bsdi_other_reason_no_exercise"
    t.integer  "bsdi_activity_minutes_vigorous"
    t.integer  "bsdi_activity_minutes_moderate"
    t.boolean  "bsdi_physical_inactivity"
    t.datetime "created_at",                     default: "now()", null: false
    t.datetime "updated_at",                     default: "now()", null: false
  end

  create_table "bsdi_histories", force: :cascade do |t|
    t.string   "bsdi_report_id"
    t.integer  "bsdi_family_stroke"
    t.integer  "bsdi_family_cancer"
    t.integer  "bsdi_family_diabetes"
    t.integer  "bsdi_family_cholesterol"
    t.integer  "bsdi_family_hypertension"
    t.boolean  "bsdi_family_heart_only"
    t.datetime "created_at",               default: "now()", null: false
    t.datetime "updated_at",               default: "now()", null: false
  end

  create_table "bsdi_hosps", force: :cascade do |t|
    t.string   "bsdi_report_id"
    t.boolean  "bsdi_hospitalization"
    t.datetime "created_at",           default: "now()", null: false
    t.datetime "updated_at",           default: "now()", null: false
  end

  create_table "bsdi_measurements", force: :cascade do |t|
    t.float    "bsdi_weight"
    t.float    "bsdi_height"
    t.float    "bsdi_waist"
    t.boolean  "bsdi_waist_risk"
    t.float    "bsdi_hips"
    t.integer  "bsdi_weight_belief"
    t.float    "bsdi_bmi"
    t.integer  "bsdi_bmi_category"
    t.boolean  "bsdi_high_risk_bmi"
    t.boolean  "bsdi_hypertrophic"
    t.boolean  "bsdi_disabled"
    t.datetime "created_at",         default: "now()", null: false
    t.datetime "updated_at",         default: "now()", null: false
    t.string   "bsdi_report_id"
  end

  create_table "bsdi_patients", force: :cascade do |t|
    t.string   "patient_id",                         null: false
    t.string   "bsdi_fname"
    t.string   "bsdi_lname"
    t.boolean  "bsdi_gender"
    t.date     "bsdi_birthdate"
    t.string   "bsdi_previous_id"
    t.datetime "created_at",       default: "now()", null: false
    t.datetime "updated_at",       default: "now()", null: false
  end

  create_table "bsdi_psyches", force: :cascade do |t|
    t.string   "bsdi_report_id"
    t.integer  "bsdi_psych_overall"
    t.integer  "bsdi_life_satisfaction"
    t.integer  "bsdi_satisfaction_job"
    t.integer  "bsdi_stress_level"
    t.integer  "bsdi_psych_stress_effect"
    t.integer  "bsdi_sleep"
    t.integer  "bsdi_insufficient_sleep"
    t.integer  "bsdi_friends"
    t.integer  "bsdi_social_ties"
    t.integer  "bsdi_spirit_health"
    t.datetime "created_at",               default: "now()", null: false
    t.datetime "updated_at",               default: "now()", null: false
  end

  create_table "bsdi_reports", force: :cascade do |t|
    t.string   "bsdi_patient_id"
    t.date     "bsdi_date"
    t.boolean  "bsdi_newest"
    t.integer  "bsdi_valid_year"
    t.boolean  "bsdi_user_defined_flag"
    t.boolean  "bsdi_staff_entry"
    t.datetime "created_at",             default: "now()", null: false
    t.datetime "updated_at",             default: "now()", null: false
  end

  create_table "bsdi_risks", force: :cascade do |t|
    t.string   "bsdi_report_id"
    t.integer  "bsdi_risk_stratification"
    t.integer  "bsdi_risk_factor_count"
    t.integer  "bsdi_self_rating"
    t.datetime "created_at",               default: "now()", null: false
    t.datetime "updated_at",               default: "now()", null: false
  end

  create_table "bsdi_smoking_barriers", force: :cascade do |t|
    t.string   "bsdi_report_id"
    t.integer  "bsdi_rfc_smoking"
    t.boolean  "bsdi_smoke_barrier_knowledge"
    t.boolean  "bsdi_smoke_barrier_temptation"
    t.boolean  "bsdi_smoke_barrier_friends"
    t.boolean  "bsdi_smoke_barrier_weight"
    t.boolean  "bsdi_smoke_barrier_stress"
    t.boolean  "bsdi_smoke_barrier_other"
    t.datetime "created_at",                    default: "now()", null: false
    t.datetime "updated_at",                    default: "now()", null: false
  end

  create_table "bsdi_smokings", force: :cascade do |t|
    t.string   "bsdi_report_id"
    t.boolean  "bsdi_smoking_status"
    t.datetime "created_at",          default: "now()", null: false
    t.datetime "updated_at",          default: "now()", null: false
  end

  create_table "bsdi_tobacco_and_alcohols", force: :cascade do |t|
    t.string   "bsdi_report_id"
    t.integer  "bsdi_tobacco"
    t.integer  "bsdi_alcohol"
    t.integer  "bsdi_binge_drinking"
    t.integer  "bsdi_medication_relax"
    t.datetime "created_at",            default: "now()", null: false
    t.datetime "updated_at",            default: "now()", null: false
  end

  create_table "bsdi_weights", force: :cascade do |t|
    t.string   "bsdi_report_id"
    t.integer  "rfc_weight"
    t.boolean  "bsdi_weight_barrier_knowledge"
    t.boolean  "bsdi_weight_barrier_access"
    t.boolean  "bsdi_weight_barrier_social"
    t.boolean  "bsdi_weight_barrier_exercise"
    t.boolean  "bsdi_weight_barrier_stress"
    t.datetime "created_at",                    default: "now()", null: false
    t.datetime "updated_at",                    default: "now()", null: false
  end

  create_table "cancer_screenings", force: :cascade do |t|
    t.string   "mds_report_id"
    t.integer  "psa"
    t.integer  "dre"
    t.integer  "fob"
    t.integer  "colonoscopy"
    t.integer  "pap_smear"
    t.integer  "breast_exam"
    t.integer  "mammogram"
    t.integer  "skin"
    t.integer  "testicular"
    t.date     "exam_date"
    t.datetime "created_at",         default: "now()", null: false
    t.datetime "updated_at",         default: "now()", null: false
    t.boolean  "psa_result"
    t.boolean  "dre_result"
    t.boolean  "fob_result"
    t.boolean  "colonoscopy_result"
    t.boolean  "pap_smear_result"
    t.boolean  "breast_exam_result"
    t.boolean  "mammogram_result"
    t.boolean  "skin_result"
    t.boolean  "testicular_result"
  end

  create_table "current_jobs", force: :cascade do |t|
    t.string   "mds_report_id"
    t.boolean  "currently_emp"
    t.integer  "current_duties"
    t.boolean  "volunteer"
    t.integer  "volunteer_hours"
    t.boolean  "other_employment"
    t.datetime "created_at",       default: "now()", null: false
    t.datetime "updated_at",       default: "now()", null: false
    t.integer  "date_of_hire"
    t.integer  "date_of_exit"
  end

  create_table "demographics", force: :cascade do |t|
    t.string  "mds_patient_id"
    t.integer "gender"
    t.integer "ethnicity"
    t.integer "race"
    t.integer "marital_status"
    t.integer "ed_level"
  end

  create_table "duties", force: :cascade do |t|
    t.string   "mds_report_id"
    t.integer  "fire_suppression_years"
    t.integer  "ems_years"
    t.integer  "mgmt_years"
    t.datetime "created_at",             default: "now()", null: false
    t.datetime "updated_at",             default: "now()", null: false
  end

  create_table "family_histories", force: :cascade do |t|
    t.string   "mds_report_id"
    t.boolean  "male_heart_disease"
    t.boolean  "female_heart_disease"
    t.boolean  "male_alcohol"
    t.boolean  "female_alcohol"
    t.boolean  "male_hypertension"
    t.boolean  "female_hypertension"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "fitness_departments", force: :cascade do |t|
    t.string   "fitness_dept_id"
    t.string   "fitness_dept_name"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "fitness_patients", force: :cascade do |t|
    t.string   "patient_id"
    t.string   "fitness_lname"
    t.string   "fitness_fname"
    t.string   "fitness_dept"
    t.string   "fitness_gender"
    t.datetime "created_at",     default: "now()", null: false
    t.datetime "updated_at",     default: "now()", null: false
  end

  create_table "fitness_reports", force: :cascade do |t|
    t.string   "fitness_report_id"
    t.string   "fitness_patient_id"
    t.date     "fitness_test_date"
    t.datetime "created_at",         default: "now()", null: false
    t.datetime "updated_at",         default: "now()", null: false
  end

  create_table "fitness_test_tests", force: :cascade do |t|
    t.string   "fitness_report_id"
    t.float    "fitness_ht"
    t.float    "fitness_wt"
    t.float    "fitness_bia_stnd"
    t.float    "fitness_bia_ath"
    t.string   "fitness_bia_p_f"
    t.float    "fitness_bmi"
    t.float    "fitness_tbw"
    t.float    "fitness_skinfold"
    t.string   "fitness_skn_p_f"
    t.float    "fitness_bodpod"
    t.string   "fitness_bod_p_f"
    t.float    "fitness_accuflex"
    t.string   "fitness_flex_p_fl"
    t.float    "fitness_grip_r"
    t.float    "fitness_leg_press"
    t.float    "fitness_arm_curl"
    t.integer  "fitness_q_3"
    t.integer  "fitness_q_4"
    t.integer  "fitness_rest_ecg"
    t.float    "fitness_percent_max_hr"
    t.float    "fitness_max_mets"
    t.float    "fitness_max_rpe"
    t.float    "fitness_max_vo2"
    t.string   "fitness_vo2_pass_fail"
    t.boolean  "fitness_swat"
    t.boolean  "fitness_scuba"
    t.boolean  "fitness_hazmat"
    t.boolean  "fitness_canine"
    t.boolean  "fitness_taskforce"
    t.boolean  "fitness_reserve"
    t.boolean  "fitness_merit"
    t.boolean  "fitness_envir_oficr"
    t.boolean  "fitness_recheck"
    t.boolean  "fitness_ex_rx_offered"
    t.boolean  "fitness_rx_accepted"
    t.integer  "fitness_impression"
    t.boolean  "fitness_rtw"
    t.boolean  "fitness_promo"
    t.boolean  "fitness_arrestee"
    t.boolean  "fitness_jco"
    t.string   "fitness_social_sec_num"
    t.float    "fitness_hip"
    t.float    "fitness_waist"
    t.boolean  "fitness_rx_required"
    t.date     "fitness_class_start_date"
    t.integer  "fitness_fms"
    t.boolean  "fitness_wfi_incentive"
    t.datetime "created_at",               default: "now()", null: false
    t.datetime "updated_at",               default: "now()", null: false
    t.float    "fitness_termination"
    t.float    "fitness_q_1"
    t.float    "fitness_q_2"
    t.string   "fitness_ectopy"
    t.float    "fitness_ref_letter"
    t.float    "fitness_bp_response"
    t.string   "fitness_pvcs"
    t.float    "fitness_age"
    t.float    "fitness_max_dbp"
    t.integer  "fitness_overread"
    t.float    "fitness_rest_hr"
    t.float    "fitness_rest_dbp"
    t.float    "fitness_crunches"
    t.string   "fitness_test_type"
    t.string   "fitness_pre_or_post"
    t.float    "fitness_push_ups"
    t.float    "fitness_plank"
    t.float    "fitness_rest_sbp"
    t.float    "fitness_max_hr"
    t.float    "fitness_max_sbp"
    t.float    "fitness_rest_bp"
    t.string   "fitness_grip_l"
  end

  create_table "fitness_tests", force: :cascade do |t|
    t.string   "mds_report_id"
    t.date     "fit_test_date"
    t.integer  "aerobic_test_type"
    t.float    "aerobic_capacity"
    t.float    "flex_sit_reach"
    t.float    "hand_strength"
    t.float    "leg_strength"
    t.float    "arm_strength"
    t.float    "vertical_jump"
    t.integer  "endurance_push_ups"
    t.integer  "plank"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "health_conditions", force: :cascade do |t|
    t.string   "mds_report_id"
    t.boolean  "diabetes"
    t.boolean  "diabetes_ty"
    t.boolean  "diabetes_current"
    t.boolean  "diabetes_medication"
    t.boolean  "hypertension"
    t.boolean  "hypertension_ty"
    t.boolean  "hypertension_current"
    t.boolean  "hypertension_medication"
    t.boolean  "hyperlipidemia"
    t.boolean  "hyperlipidemia_ty"
    t.boolean  "hyperlipidemia_current"
    t.boolean  "hyperlipidemia_medication"
    t.boolean  "cancer"
    t.boolean  "cancer_ty"
    t.boolean  "cancer_current"
    t.boolean  "cancer_medication"
    t.boolean  "heart_disease"
    t.boolean  "heart_disease_ty"
    t.boolean  "heart_disease_current"
    t.boolean  "heart_disease_medication"
    t.boolean  "resp_disease"
    t.boolean  "resp_disease_ty"
    t.boolean  "resp_disease_current"
    t.boolean  "resp_disease_medication"
    t.boolean  "gastro_disease"
    t.boolean  "gastro_disease_ty"
    t.boolean  "gastro_disease_current"
    t.boolean  "gastro_disease_medication"
    t.boolean  "repro_health"
    t.boolean  "repro_health_ty"
    t.boolean  "repro_health_current"
    t.boolean  "repro_health_medication"
    t.boolean  "neuro_disease"
    t.boolean  "neuro_disease_ty"
    t.boolean  "neuro_disease_current"
    t.boolean  "neuro_disease_medication"
    t.boolean  "hepatitis"
    t.boolean  "hepatitis_ty"
    t.boolean  "hepatitis_current"
    t.boolean  "hepatitis_medication"
    t.boolean  "psych"
    t.boolean  "psych_ty"
    t.boolean  "psych_current"
    t.boolean  "psych_medication"
    t.boolean  "shoulder"
    t.boolean  "shoulder_ty"
    t.boolean  "shoulder_current"
    t.boolean  "shoulder_medication"
    t.boolean  "knee"
    t.boolean  "knee_ty"
    t.boolean  "knee_current"
    t.boolean  "knee_medication"
    t.boolean  "back"
    t.boolean  "back_ty"
    t.boolean  "back_current"
    t.boolean  "back_medication"
    t.boolean  "arthritis"
    t.boolean  "arthritis_ty"
    t.boolean  "arthritis_current"
    t.boolean  "arthritis_medication"
    t.string   "other_text"
    t.boolean  "other_current"
    t.boolean  "other_medication"
    t.datetime "created_at",                default: "now()", null: false
    t.datetime "updated_at",                default: "now()", null: false
    t.string   "other_ty"
  end

  create_table "hearing_tests", force: :cascade do |t|
    t.string   "mds_report_id"
    t.date     "hearing_date"
    t.integer  "left_500"
    t.integer  "right_500"
    t.integer  "left_1000"
    t.integer  "right_1000"
    t.integer  "left_2000"
    t.integer  "right_2000"
    t.integer  "left_3000"
    t.integer  "right_3000"
    t.integer  "left_4000"
    t.integer  "right_4000"
    t.integer  "left_6000"
    t.integer  "right_6000"
    t.integer  "left_8000"
    t.integer  "right_8000"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "immunizations", force: :cascade do |t|
    t.string   "mds_report_id"
    t.date     "immunization_date"
    t.integer  "hepatitis_b"
    t.integer  "hep_b_titer_1"
    t.date     "hep_b_titer_1_date"
    t.integer  "heb_b_titer_2"
    t.date     "hep_b_titer_2_date"
    t.integer  "hep_a"
    t.boolean  "influenza"
    t.integer  "tb_test"
    t.date     "tb_test_date"
    t.boolean  "tb_quantiferon"
    t.integer  "hep_c"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "injury_illnesses", force: :cascade do |t|
    t.string   "mds_report_id"
    t.integer  "non_work_sick_days"
    t.integer  "injury_related_days"
    t.integer  "alternative_duty"
    t.datetime "created_at",          default: "now()", null: false
    t.datetime "updated_at",          default: "now()", null: false
    t.integer  "lt_alternative_duty"
  end

  create_table "lab_data", force: :cascade do |t|
    t.string   "mds_patient_id"
    t.date     "lab_date"
    t.integer  "wbc_count"
    t.integer  "hemoglobin"
    t.integer  "hematocrit"
    t.integer  "sgot_ast"
    t.integer  "sgpt_alt"
    t.integer  "triglyceride"
    t.integer  "cholesterol"
    t.integer  "ldl"
    t.integer  "hdl"
    t.integer  "glucose"
    t.integer  "bun"
    t.integer  "creatinine"
    t.integer  "urine_blood"
    t.integer  "urine_glucose"
    t.integer  "urine_protein"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "mds_patients", force: :cascade do |t|
    t.string   "lname"
    t.string   "fname"
    t.string   "mname"
    t.string   "ssn"
    t.datetime "created_at", default: "now()", null: false
    t.datetime "updated_at", default: "now()", null: false
    t.string   "patient_id"
  end

  create_table "mds_reports", force: :cascade do |t|
    t.datetime "created_at",     default: "now()", null: false
    t.datetime "updated_at",     default: "now()", null: false
    t.string   "mds_patient_id"
  end

  create_table "ohm_bchems", force: :cascade do |t|
    t.string   "moddate"
    t.string   "ssn"
    t.integer  "ohm_sgot"
    t.integer  "ohm_sgpt"
    t.integer  "ohm_trigly"
    t.integer  "ohm_chol"
    t.integer  "ohm_ldl"
    t.integer  "ohm_ldh"
    t.integer  "ohm_hdl"
    t.integer  "ohm_glucose"
    t.integer  "ohm_bun"
    t.integer  "ohm_creatinine"
    t.datetime "created_at",     default: "now()", null: false
    t.datetime "updated_at",     default: "now()", null: false
  end

  create_table "ohm_cbcs", force: :cascade do |t|
    t.string   "moddate"
    t.string   "ssn"
    t.integer  "ohm_wbc"
    t.integer  "ohm_hemo"
    t.string   "ohm_hema"
    t.datetime "created_at", default: "now()", null: false
    t.datetime "updated_at", default: "now()", null: false
  end

  create_table "ohm_hearings", force: :cascade do |t|
    t.string   "moddate"
    t.string   "ssn"
    t.string   "ohm_l500k"
    t.string   "ohm_r500k"
    t.string   "ohm_l1k"
    t.string   "ohm_r1k"
    t.string   "ohm_l2k"
    t.string   "ohm_r2k"
    t.string   "ohm_l3k"
    t.string   "ohm_r3k"
    t.string   "ohm_l4k"
    t.string   "ohm_r4k"
    t.string   "ohm_l6k"
    t.string   "ohm_r6k"
    t.string   "ohm_l8k"
    t.string   "ohm_r8k"
    t.datetime "created_at", default: "now()", null: false
    t.datetime "updated_at", default: "now()", null: false
  end

  create_table "ohm_immunes", force: :cascade do |t|
    t.string   "moddate"
    t.string   "ssn"
    t.string   "ohm_immune_type"
    t.string   "ohm_immune_note"
    t.datetime "created_at",      default: "now()", null: false
    t.datetime "updated_at",      default: "now()", null: false
  end

  create_table "ohm_pfts", force: :cascade do |t|
    t.string   "moddate"
    t.string   "ssn"
    t.integer  "ohm_height"
    t.integer  "ohm_weight"
    t.integer  "ohm_bp"
    t.integer  "ohm_fvc"
    t.integer  "ohm_fev1"
    t.integer  "ohm_fev1fvc"
    t.integer  "ohm_fvcpr"
    t.integer  "ohm_fev1pr"
    t.datetime "created_at",  default: "now()", null: false
    t.datetime "updated_at",  default: "now()", null: false
  end

  create_table "ohm_urins", force: :cascade do |t|
    t.string   "moddate"
    t.string   "ssn"
    t.string   "ohm_occblood"
    t.string   "ohm_uringlucose"
    t.string   "ohm_protein"
    t.datetime "created_at",      default: "now()", null: false
    t.datetime "updated_at",      default: "now()", null: false
  end

  create_table "other_employments", force: :cascade do |t|
    t.integer  "construction_years"
    t.integer  "other_ml_years"
    t.integer  "retail_years"
    t.integer  "lawn_years"
    t.integer  "admin_years"
    t.integer  "manf_years"
    t.integer  "healthcare_years"
    t.integer  "other_years"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "mds_report_id"
  end

  create_table "patients", force: :cascade do |t|
    t.string   "lname"
    t.string   "fname"
    t.string   "mname"
    t.date     "date_of_birth"
    t.datetime "created_at",    default: "now()", null: false
    t.datetime "updated_at",    default: "now()", null: false
    t.string   "ssn"
    t.integer  "gender"
    t.integer  "race"
  end

  create_table "physical_activities", force: :cascade do |t|
    t.string   "mds_report_id"
    t.integer  "thirty_min"
    t.integer  "cardio"
    t.integer  "muscle"
    t.integer  "sweat"
    t.integer  "everyday"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "physical_exams", force: :cascade do |t|
    t.string   "mds_patient_id"
    t.date     "exam_date"
    t.integer  "systolic"
    t.integer  "diastolic"
    t.integer  "pulse"
    t.float    "weight"
    t.float    "height"
    t.float    "hip"
    t.float    "waist"
    t.integer  "body_comp_method"
    t.float    "body_fat"
    t.float    "fvc"
    t.float    "fev1"
    t.float    "fev1_fvc"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "psych_backgrounds", force: :cascade do |t|
    t.string   "research_id"
    t.integer  "hgh_sch_susp"
    t.string   "college_degree"
    t.integer  "yrs_military_service"
    t.boolean  "dscpln_military"
    t.boolean  "fired"
    t.integer  "yrs_fired"
    t.integer  "wrk_suspensions"
    t.integer  "yrs_wrk_suspension"
    t.integer  "write_work"
    t.integer  "yrs_write_up_wrk"
    t.integer  "times_married"
    t.integer  "times_divorced"
    t.integer  "arrests"
    t.integer  "yrs_arrest"
    t.integer  "alcohol_drug_related_arrests"
    t.integer  "drv_suspensions"
    t.integer  "yrs_lic_susp"
    t.boolean  "sex_with_minor"
    t.integer  "yrs_minor"
    t.integer  "times_paying_for_sex"
    t.integer  "yrs_paid_sex"
    t.integer  "bankruptcies"
    t.integer  "last_bankruptcy"
    t.integer  "currnt_rx_meds"
    t.integer  "mh_hosptlztions"
    t.integer  "last_mh_hosptlztion"
    t.boolean  "self_harm"
    t.integer  "last_sh"
    t.integer  "current_psych_meds"
    t.integer  "psych_meds_lifetime"
    t.integer  "mh_dxs"
    t.integer  "last_dx"
    t.boolean  "mood_do"
    t.boolean  "anx_do"
    t.boolean  "adhd"
    t.integer  "longest_period_dep"
    t.integer  "dep_episodes"
    t.integer  "yrs_since_mst_recnt_dep_episd"
    t.integer  "illegal_drugs_used"
    t.integer  "last_illegal_drug_use"
    t.integer  "marijuana_use"
    t.integer  "last_marijuana_use"
    t.integer  "drink_per_week"
    t.integer  "drinks_setting"
    t.integer  "intox_month"
    t.integer  "intox_year"
    t.integer  "last_intox"
    t.integer  "times_intox_driving"
    t.integer  "last_intox_driving"
    t.integer  "drnks_effcts"
    t.boolean  "fights_drinking"
    t.integer  "fights_adult"
    t.integer  "last_fight"
    t.boolean  "stole"
    t.integer  "last_stolen"
    t.integer  "drinks_per_week"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "psych_calcs", force: :cascade do |t|
    t.string   "research_id"
    t.integer  "l"
    t.integer  "k"
    t.integer  "s"
    t.integer  "scale_1"
    t.integer  "scale_2"
    t.integer  "scale_3"
    t.integer  "scale_4"
    t.integer  "scale_6"
    t.integer  "scale_7"
    t.integer  "scale_8"
    t.integer  "scale_9"
    t.integer  "scale_0"
    t.integer  "rcd"
    t.integer  "rc1"
    t.integer  "rc2"
    t.integer  "rc3"
    t.integer  "rc4"
    t.integer  "rc6"
    t.integer  "rc7"
    t.integer  "rc8"
    t.integer  "rc9"
    t.integer  "anx"
    t.integer  "frs"
    t.integer  "obs"
    t.integer  "dep"
    t.integer  "hea"
    t.integer  "biz"
    t.integer  "ang"
    t.integer  "cyn"
    t.integer  "asp"
    t.integer  "tpa"
    t.integer  "lse"
    t.integer  "sod"
    t.integer  "fam"
    t.integer  "wrk"
    t.integer  "trt"
    t.integer  "a"
    t.integer  "r"
    t.integer  "es"
    t.integer  "do"
    t.integer  "re"
    t.integer  "mt"
    t.integer  "pk"
    t.integer  "mds"
    t.integer  "ho"
    t.integer  "o_h"
    t.integer  "mac_r"
    t.integer  "aas"
    t.integer  "aps"
    t.integer  "aggr"
    t.integer  "psyc"
    t.integer  "disc"
    t.integer  "nege"
    t.integer  "intr"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "psych_demographics", force: :cascade do |t|
    t.string   "research_id"
    t.boolean  "gender"
    t.integer  "age"
    t.integer  "ethnicity"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "psych_employments", force: :cascade do |t|
    t.string   "research_id"
    t.string   "department"
    t.string   "position"
    t.boolean  "prior_pub_saf_exprnce"
    t.integer  "yrs_exprnce_pub_saf"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "psych_reports", force: :cascade do |t|
    t.string   "research_id"
    t.boolean  "grade"
    t.integer  "examiner"
    t.date     "date_of_evaluation"
    t.boolean  "gave_consent"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "queries", force: :cascade do |t|
    t.integer  "aerobic_test_type"
    t.float    "aerobic_capacity"
    t.float    "flex_sit_reach"
    t.float    "hand_strength"
    t.float    "leg_strength"
    t.float    "arm_strength"
    t.float    "vertical_jump"
    t.integer  "endurance_push_ups"
    t.integer  "plank"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "results", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "searches", force: :cascade do |t|
    t.integer  "aerobic_test_type"
    t.float    "aerobic_capacity"
    t.float    "flex_sit_reach"
    t.float    "hand_strength"
    t.float    "leg_strength"
    t.float    "arm_strength"
    t.float    "vertical_jump"
    t.integer  "endurance_push_ups"
    t.integer  "plank"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "surgeries", force: :cascade do |t|
    t.string   "mds_report_id"
    t.integer  "chest"
    t.integer  "back"
    t.integer  "neck"
    t.integer  "shoulder"
    t.integer  "leg"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "tobacco_and_alcohols", force: :cascade do |t|
    t.string   "mds_report_id"
    t.boolean  "smoke"
    t.integer  "pack_count"
    t.boolean  "chew_tobacco"
    t.boolean  "smoke_cigar"
    t.boolean  "smoke_cessation"
    t.boolean  "cessation_success"
    t.boolean  "alcohol"
    t.datetime "created_at",        default: "now()", null: false
    t.datetime "updated_at",        default: "now()", null: false
    t.integer  "start_smoke"
    t.integer  "stop_smoke"
    t.integer  "alcohol_count"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "crypted_password"
    t.string   "persistence_token"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.integer  "login_count",        default: 0,     null: false
    t.integer  "failed_login_count", default: 0,     null: false
    t.datetime "last_request_at"
    t.datetime "current_login_at"
    t.datetime "last_login_at"
    t.string   "current_login_ip"
    t.string   "last_login_ip"
    t.string   "perishable_token"
    t.boolean  "admin",              default: false
    t.string   "name"
    t.string   "organization"
    t.text     "research_synopsis"
    t.boolean  "approved",           default: false
    t.string   "password_salt"
    t.string   "approval_digest"
    t.datetime "approved_at"
    t.string   "denial_digest"
    t.datetime "denial_at"
  end

  add_index "users", ["approved"], name: "index_users_on_approved", using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

end
