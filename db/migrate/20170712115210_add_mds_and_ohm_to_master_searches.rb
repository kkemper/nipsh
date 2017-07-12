class AddMdsAndOhmToMasterSearches < ActiveRecord::Migration
  def up
    execute <<-SQL
      CREATE VIEW master_searches AS
        SELECT 
          t.id, t.date_of_birth, c.bsdi_cholesterol, c.bsdi_hdl, c.bsdi_ldl, c.bsdi_triglycerides, c.bsdi_glucose, p.bsdi_diastolic, p.bsdi_systolic, s.bsdi_smoking_status, h.bsdi_family_stroke, h.bsdi_family_cancer, h.bsdi_family_diabetes, h.bsdi_family_cholesterol, h.bsdi_family_hypertension, h.bsdi_family_heart_only, d.bsdi_has_disease, d.bsdi_heart_disease, d.bsdi_hypertension, d.bsdi_diabetes, d.bsdi_diabetes_type1, d.bsdi_metabolic, d.bsdi_cancer, d.bsdi_auto_immune, d.bsdi_asthma, d.bsdi_pulmonary, d.bsdi_arthritis, d.bsdi_allergies, d.bsdi_digestive, d.bsdi_mental, d.bsdi_neck_pain, d.bsdi_back_pain, d.bsdi_respiratory, d.bsdi_migraines_headaches, d.bsdi_depression, d.bsdi_anxiety, d.bsdi_musculoskeletal_problems, d.bsdi_periphvasc, d.bsdi_seizures, d.bsdi_stroke, d.bsdi_pregnancy, d.bsdi_chest_pain, d.bsdi_leg_pain, d.bsdi_dizziness, d.bsdi_shortbreath, d.bsdi_orthopnea, d.bsdi_heart_flutter, d.bsdi_heart_murmur, d.bsdi_ankle_edema, d.bsdi_heart_meds, d.bsdi_family_chd, d.bsdi_chd_risk, oc.ohm_wbc, oc.ohm_hemo, oc.ohm_hema, ob.ohm_sgot, ob.ohm_sgpt, ob.ohm_trigly, ob.ohm_chol, ob.ohm_ldl, ob.ohm_hdl, ob.ohm_glucose, ob.ohm_bun, ob.ohm_creatinine, demo.gender, demo.ethnicity, demo.race, demo.marital_status, demo.ed_level
        FROM
          patients t, bsdi_blood_chemistries c, bsdi_blood_pressures p, bsdi_smokings s, bsdi_histories h, bsdi_diseases d, bsdi_patients b, bsdi_reports r, ohm_cbcs oc, ohm_bchems ob, mds_patients mp, mds_reports mr, demographics demo
        WHERE
          t.id = b.patient_id AND b.id = r.bsdi_patient_id AND r.id = c.bsdi_report_id AND r.id = p.bsdi_report_id AND r.id = s.bsdi_report_id AND r.id = h.bsdi_report_id AND r.id = d.bsdi_report_id AND t.ssn = oc.ssn AND t.ssn = ob.ssn AND mp.patient_id = t.id AND mr.mds_patient_id = mp.id AND mp.id = demo.mds_patient_id
        GROUP BY
          t.id, t.date_of_birth, c.bsdi_cholesterol, c.bsdi_hdl, c.bsdi_ldl, c.bsdi_triglycerides, c.bsdi_glucose, p.bsdi_diastolic, p.bsdi_systolic, s.bsdi_smoking_status, h.bsdi_family_stroke, h.bsdi_family_cancer, h.bsdi_family_diabetes, h.bsdi_family_cholesterol, h.bsdi_family_hypertension, h.bsdi_family_heart_only, d.bsdi_has_disease, d.bsdi_heart_disease, d.bsdi_hypertension, d.bsdi_diabetes, d.bsdi_diabetes_type1, d.bsdi_metabolic, d.bsdi_cancer, d.bsdi_auto_immune, d.bsdi_asthma, d.bsdi_pulmonary, d.bsdi_arthritis, d.bsdi_allergies, d.bsdi_digestive, d.bsdi_mental, d.bsdi_neck_pain, d.bsdi_back_pain, d.bsdi_respiratory, d.bsdi_migraines_headaches, d.bsdi_depression, d.bsdi_anxiety, d.bsdi_musculoskeletal_problems, d.bsdi_periphvasc, d.bsdi_seizures, d.bsdi_stroke, d.bsdi_pregnancy, d.bsdi_chest_pain, d.bsdi_leg_pain, d.bsdi_dizziness, d.bsdi_shortbreath, d.bsdi_orthopnea, d.bsdi_heart_flutter, d.bsdi_heart_murmur, d.bsdi_ankle_edema, d.bsdi_heart_meds, d.bsdi_family_chd, d.bsdi_chd_risk, oc.ohm_wbc, oc.ohm_hemo, oc.ohm_hema, ob.ohm_sgot, ob.ohm_sgpt, ob.ohm_trigly, ob.ohm_chol, ob.ohm_ldl, ob.ohm_hdl, ob.ohm_glucose, ob.ohm_bun, ob.ohm_creatinine, demo.gender, demo.ethnicity, demo.race, demo.marital_status, demo.ed_level
    SQL
  end

  def down
    execute "DROP VIEW master_searches"
  end
end
