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

ActiveRecord::Schema.define(version: 20160715171615) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

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

  create_table "injury_illnesses", force: :cascade do |t|
    t.string   "report_id"
    t.integer  "non_work_sick_days"
    t.integer  "injury_related_days"
    t.integer  "alternative_duty"
    t.boolean  "lt_alternative_duty"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
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

  create_table "patients", force: :cascade do |t|
    t.string   "patient_id"
    t.string   "lname"
    t.string   "fname"
    t.string   "mname"
    t.date     "date_of_birth"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
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

end
