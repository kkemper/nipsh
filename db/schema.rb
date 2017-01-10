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

ActiveRecord::Schema.define(version: 20170110143943) do

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
    t.binary   "bsdi_active_barrier_time"
    t.binary   "bsdi_active_barrier_people"
    t.binary   "bsdi_active_barrier_unfamiliar"
    t.binary   "bsdi_active_barrier_resources"
    t.binary   "bsdi_active_barrier_unpleasant"
    t.binary   "bsdi_active_barrier_medical_worry"
    t.binary   "bsdi_active_barrier_intimidating"
    t.binary   "bsdi_active_barrier_embarrassed"
    t.binary   "bsdi_active_barrier_other"
    t.binary   "bsdi_active_barrier_injury"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

  create_table "bsdi_alcohol_barriers", force: :cascade do |t|
    t.string   "bsdi_report_id"
    t.integer  "bsdi_rfc_alcohol"
    t.binary   "bsdi_alcohol_barrier_knowledge"
    t.binary   "bsdi_alcohol_barrier_temptation"
    t.binary   "bsdi_alcohol_barrier_friends"
    t.binary   "bsdi_alcohol_barrier_perception"
    t.binary   "bsdi_alcohol_barrier_stress"
    t.binary   "bsdi_alcohol_barrier_other"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
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
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "bsdi_blood_chemistries", force: :cascade do |t|
    t.string   "bsdi_report_id"
    t.date     "bsdi_bchem_date"
    t.integer  "bsdi_cholesterol"
    t.binary   "bsdi_high_cholesterol"
    t.binary   "bsdi_cholesterol_meds"
    t.integer  "bsdi_hdl"
    t.integer  "bsdi_hdl_status"
    t.integer  "bsdi_ldl"
    t.binary   "bsdi_high_ldl"
    t.integer  "bsdi_triglycerides"
    t.binary   "bsdi_high_triglyceride"
    t.integer  "bsdi_glucose"
    t.binary   "bsdi_pre_diabetes"
    t.integer  "bsdi_a1c"
    t.binary   "bsdi_blood_chem_risk"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "bsdi_blood_pressures", force: :cascade do |t|
    t.string   "bsdi_report_id"
    t.integer  "bsdi_systolic"
    t.integer  "bsdi_diastolic"
    t.binary   "bsdi_bp_medicine"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "bsdi_current_jobs", force: :cascade do |t|
    t.string   "bsdi_report_id"
    t.string   "bsdi_organization"
    t.string   "bsdi_department"
    t.integer  "bsdi_service"
    t.string   "bsdi_job_title"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "bsdi_diet_barriers", force: :cascade do |t|
    t.string   "bsdi_report_id"
    t.integer  "bsdi_rfc_diet"
    t.binary   "bsdi_diet_barrier_unfamililar"
    t.binary   "bsdi_diet_barrier_time"
    t.binary   "bsdi_diet_barrier_people"
    t.binary   "bsdi_diet_barrier_taste"
    t.binary   "bsdi_diet_barrier_other"
    t.binary   "bsdi_diet_barrier_expense"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
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
    t.binary   "bsdi_nut_missing_values"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "bsdi_diseases", force: :cascade do |t|
    t.string   "bsdi_report_id"
    t.binary   "bsdi_has_disease"
    t.binary   "bsdi_heart_disease"
    t.binary   "bsdi_hypertension"
    t.binary   "bsdi_diabetes"
    t.binary   "bsdi_diabetes_type1"
    t.binary   "bsdi_metabolic"
    t.binary   "bsdi_cancer"
    t.binary   "bsdi_auto_immune"
    t.binary   "bsdi_asthma"
    t.binary   "bsdi_pulmonary"
    t.binary   "bsdi_arthritis"
    t.binary   "bsdi_allergies"
    t.binary   "bsdi_digestive"
    t.binary   "bsdi_mental"
    t.binary   "bsdi_neck_pain"
    t.binary   "bsdi_back_pain"
    t.binary   "bsdi_respiratory"
    t.binary   "bsdi_migraines_headaches"
    t.binary   "bsdi_depression"
    t.binary   "bsdi_anxiety"
    t.binary   "bsdi_musculoskeletal_problems"
    t.binary   "bsdi_periphvasc"
    t.binary   "bsdi_seizures"
    t.binary   "bsdi_stroke"
    t.binary   "bsdi_pregnancy"
    t.binary   "bsdi_chest_pain"
    t.binary   "bsdi_leg_pain"
    t.binary   "bsdi_dizziness"
    t.binary   "bsdi_shortbreath"
    t.binary   "bsdi_orthopnea"
    t.binary   "bsdi_heart_flutter"
    t.binary   "bsdi_heart_murmur"
    t.binary   "bsdi_ankle_edema"
    t.binary   "bsdi_heart_meds"
    t.integer  "bsdi_family_chd"
    t.binary   "bsdi_chd_risk"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "bsdi_exercises", force: :cascade do |t|
    t.string   "bsdi_report_id"
    t.integer  "bsdi_exercise"
    t.integer  "bsdi_how_long_active"
    t.binary   "bsdi_sedentary"
    t.binary   "bsdi_hip_knee_problems"
    t.binary   "bsdi_other_reason_no_exercise"
    t.integer  "bsdi_activity_minutes_vigorous"
    t.integer  "bsdi_activity_minutes_moderate"
    t.binary   "bsdi_physical_inactivity"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  create_table "bsdi_histories", force: :cascade do |t|
    t.string   "bsdi_report_id"
    t.integer  "bsdi_family_stroke"
    t.integer  "bsdi_family_cancer"
    t.integer  "bsdi_family_diabetes"
    t.integer  "bsdi_family_cholesterol"
    t.integer  "bsdi_family_hypertension"
    t.binary   "bsdi_family_heart_only"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "bsdi_hosps", force: :cascade do |t|
    t.string   "bsdi_report_id"
    t.binary   "bsdi_hospitalization"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "bsdi_measurements", force: :cascade do |t|
    t.float    "bsdi_weight"
    t.float    "bsdi_height"
    t.float    "bsdi_waist"
    t.binary   "bsdi_waist_risk"
    t.float    "bsdi_hips"
    t.integer  "bsdi_weight_belief"
    t.float    "bsdi_bmi"
    t.integer  "bsdi_bmi_category"
    t.binary   "bsdi_high_risk_bmi"
    t.binary   "bsdi_hypertrophic"
    t.binary   "bsdi_disabled"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "bsdi_report_id"
  end

  create_table "bsdi_patients", force: :cascade do |t|
    t.string   "bsdi_id"
    t.string   "bsdi_psmid"
    t.string   "bsdi_fname"
    t.string   "bsdi_lname"
    t.binary   "bsdi_gender"
    t.date     "bsdi_birthdate"
    t.string   "bsdi_previous_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
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
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "bsdi_reports", force: :cascade do |t|
    t.string   "bsdi_patient_id"
    t.date     "bsdi_date"
    t.binary   "bsdi_newest"
    t.integer  "bsdi_valid_year"
    t.binary   "bsdi_user_defined_flag"
    t.binary   "bsdi_staff_entry"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "bsdi_risks", force: :cascade do |t|
    t.string   "bsdi_report_id"
    t.integer  "bsdi_risk_stratification"
    t.integer  "bsdi_risk_factor_count"
    t.integer  "bsdi_self_rating"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "bsdi_smoking_barriers", force: :cascade do |t|
    t.string   "bsdi_report_id"
    t.integer  "bsdi_rfc_smoking"
    t.binary   "bsdi_smoke_barrier_knowledge"
    t.binary   "bsdi_smoke_barrier_temptation"
    t.binary   "bsdi_smoke_barrier_friends"
    t.binary   "bsdi_smoke_barrier_weight"
    t.binary   "bsdi_smoke_barrier_stress"
    t.binary   "bsdi_smoke_barrier_other"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "bsdi_smokings", force: :cascade do |t|
    t.string   "bsdi_report_id"
    t.binary   "bsdi_smoking_status"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "bsdi_tobacco_and_alcohols", force: :cascade do |t|
    t.string   "bsdi_report_id"
    t.integer  "bsdi_tobacco"
    t.integer  "bsdi_alcohol"
    t.integer  "bsdi_binge_drinking"
    t.integer  "bsdi_medication_relax"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "bsdi_weights", force: :cascade do |t|
    t.string   "bsdi_report_id"
    t.integer  "rfc_weight"
    t.binary   "bsdi_weight_barrier_knowledge"
    t.binary   "bsdi_weight_barrier_access"
    t.binary   "bsdi_weight_barrier_social"
    t.binary   "bsdi_weight_barrier_exercise"
    t.binary   "bsdi_weight_barrier_stress"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "cancer_screenings", force: :cascade do |t|
    t.string   "report_id"
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
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "current_jobs", force: :cascade do |t|
    t.string   "report_id"
    t.boolean  "currently_emp"
    t.date     "date_of_hire"
    t.date     "date_of_exit"
    t.integer  "current_duties"
    t.boolean  "volunteer"
    t.integer  "volunteer_hours"
    t.boolean  "other_employment"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "demographics", force: :cascade do |t|
    t.string  "report_id"
    t.integer "gender"
    t.integer "ethnicity"
    t.integer "race"
    t.integer "marital_status"
    t.string  "ed_level"
  end

  create_table "duties", force: :cascade do |t|
    t.string   "report_id"
    t.integer  "fire_suppression_years"
    t.integer  "ems_years"
    t.integer  "mgmt_years"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "family_histories", force: :cascade do |t|
    t.string   "report_id"
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
    t.string   "fitness_patient_id"
    t.string   "fitness_lname"
    t.string   "fitness_fname"
    t.string   "fitness_dept"
    t.binary   "fitness_gender"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "fitness_reports", force: :cascade do |t|
    t.string   "fitness_report_id"
    t.string   "fitness_patient_id"
    t.date     "fitness_test_date"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "fitness_test_tests", force: :cascade do |t|
    t.string   "fitness_report_id"
    t.integer  "fitness_age"
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
    t.float    "fitness_grip_l"
    t.float    "fitness_grip_r"
    t.float    "fitness_leg_press"
    t.float    "fitness_arm_curl"
    t.integer  "fitness_push_ups"
    t.integer  "fitness_crunches"
    t.integer  "fitness_q_1"
    t.integer  "fitness_q_2"
    t.integer  "fitness_q_3"
    t.integer  "fitness_q_4"
    t.integer  "fitness_rest_hr"
    t.integer  "fitness_rest_sbp"
    t.integer  "fitness_rest_dbp"
    t.integer  "fitness_rest_ecg"
    t.integer  "fitness_rest_bp"
    t.integer  "fitness_max_hr"
    t.integer  "fitness_max_sbp"
    t.integer  "fitness_max_dbp"
    t.integer  "fitness_percent_max_hr"
    t.float    "fitness_max_mets"
    t.float    "fitness_max_rpe"
    t.float    "fitness_max_vo2"
    t.string   "fitness_vo2_pass_fail"
    t.binary   "fitness_swat"
    t.binary   "fitness_scuba"
    t.binary   "fitness_hazmat"
    t.binary   "fitness_canine"
    t.binary   "fitness_taskforce"
    t.binary   "fitness_reserve"
    t.binary   "fitness_merit"
    t.binary   "fitness_envir_oficr"
    t.binary   "fitness_recheck"
    t.binary   "fitness_ex_rx_offered"
    t.binary   "fitness_rx_accepted"
    t.binary   "fitness_termination"
    t.integer  "fitness_bp_response"
    t.integer  "fitness_impression"
    t.binary   "fitness_ref_letter"
    t.binary   "fitness_overread"
    t.binary   "fitness_ectopy"
    t.binary   "fitness_pvcs"
    t.binary   "fitness_rtw"
    t.binary   "fitness_promo"
    t.binary   "fitness_arrestee"
    t.binary   "fitness_jco"
    t.string   "fitness_social_sec_num"
    t.float    "fitness_hip"
    t.float    "fitness_waist"
    t.binary   "fitness_rx_required"
    t.integer  "fitness_plank"
    t.integer  "fitness_test_type"
    t.date     "fitness_class_start_date"
    t.integer  "fitness_pre_or_post"
    t.integer  "fitness_fms"
    t.binary   "fitness_wfi_incentive"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "fitness_tests", force: :cascade do |t|
    t.string   "report_id"
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
    t.string   "report_id"
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
    t.boolean  "other_ty"
    t.boolean  "other_current"
    t.boolean  "other_medication"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "hearing_tests", force: :cascade do |t|
    t.string   "report_id"
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
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "immunizations", force: :cascade do |t|
    t.string   "report_id"
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
    t.string   "report_id"
    t.integer  "non_work_sick_days"
    t.integer  "injury_related_days"
    t.integer  "alternative_duty"
    t.boolean  "lt_alternative_duty"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "lab_data", force: :cascade do |t|
    t.string   "patient_id"
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
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "mds_reports", force: :cascade do |t|
    t.string   "report_id"
    t.string   "demographic_id"
    t.date     "report_date"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
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
    t.string   "report_id"
  end

  create_table "patients", primary_key: "patient_id", force: :cascade do |t|
    t.integer  "id",            default: "nextval('patients_id_seq'::regclass)", null: false
    t.string   "lname"
    t.string   "fname"
    t.string   "mname"
    t.date     "date_of_birth"
    t.datetime "created_at",                                                     null: false
    t.datetime "updated_at",                                                     null: false
  end

  create_table "physical_activities", force: :cascade do |t|
    t.string   "report_id"
    t.integer  "thirty_min"
    t.integer  "cardio"
    t.integer  "muscle"
    t.integer  "sweat"
    t.integer  "everyday"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "physical_exams", force: :cascade do |t|
    t.string   "patient_id"
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
    t.string   "report_id"
    t.integer  "chest"
    t.integer  "back"
    t.integer  "neck"
    t.integer  "shoulder"
    t.integer  "leg"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tobacco_and_alcohols", force: :cascade do |t|
    t.string   "report_id"
    t.boolean  "smoke"
    t.date     "start_smoke"
    t.date     "stop_smoke"
    t.integer  "pack_count"
    t.boolean  "chew_tobacco"
    t.boolean  "smoke_cigar"
    t.boolean  "smoke_cessation"
    t.boolean  "cessation_success"
    t.boolean  "alcohol"
    t.boolean  "alcohol_count"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
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
