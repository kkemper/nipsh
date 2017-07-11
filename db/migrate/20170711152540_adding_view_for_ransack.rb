class AddingViewForRansack < ActiveRecord::Migration
  def up
    execute <<-SQL
      CREATE VIEW master_search AS
        SELECT 
          p.patient_id, p.date_of_birth, c.bsdi_cholesterol, c.bsdi_hdl, c.bsdi_ldl, c.bsdi_triglycerides, c.bsdi_glucose, p.bsdi_diastolic, p.bsdi_systolic, s.bsdi_smoking_status, j.bsdi_organization, j.bsdi_department, j.bsdi_service, j.bsdi_job_title, h.bsdi_family_stroke, h.bsdi_family_cancer, h.bsdi_family_diabetes, h.bsdi_family_cholesterol, h.bsdi_family_hypertension, h.bsdi_family_heart_only, d.bsdi_has_disease, d.bsdi_heart_disease, d.bsdi_hypertension, d.bsdi_diabetes, d.bsdi_diabetes_type1, d.bsdi_metabolic, d.bsdi_cancer, d.bsdi_auto_immune, d.bsdi_asthma, d.bsdi_pulmonary, d.bsdi_arthritis, d.bsdi_allergies, d.bsdi_digestive, d.bsdi_mental, d.bsdi_neck_pain, d.bsdi_back_pain, d.bsdi_respiratory, d.bsdi_migraines_headaches, d.bsdi_depression, d.bsdi_anxiety, d.bsdi_musculoskeletal_problems, d.bsdi_periphvasc, d.bsdi_seizures, d.bsdi_stroke, d.bsdi_pregnancy, d.bsdi_chest_pain, d.bsdi_leg_pain, d.bsdi_dizziness, d.bsdi_shortbreath, d.bsdi_orthopnea, d.bsdi_heart_flutter, d.bsdi_heart_murmur, d.bsdi_ankle_edema, d.bsdi_heart_meds, d.bsdi_family_chd, d.bsdi_chd_risk, m.bsdi_weight, m.bsdi_height, m.bsdi_waist, m.bsdi_waist_risk, m.bsdi_hips, m.bsdi_weight_belief, m.bsdi_bmi, m.bsdi_bmi_category, m.bsdi_high_risk_bmi, m.bsdi_hypertrophic, m.bsdi_disabled
        FROM
          patient p, bsdi_blood_chemistries c, bsdi_blood_pressures p, bsdi_smokings s, bsdi_current_jobs j, bsdi_histories h, bsdi_diseases d, bsdi_measurements m, bsdi_patients b, bsdi_reports r
        WHERE
          p.id = b.patient_id, b.id = r.bsdi_patient_id, r.id = c.bsdi_report_id, r.id = p.bsdi_report_id, r.id = s.bsdi_report_id, r.id = j.bsdi_report_id, r.id = h.bsdi_report_id, r.id = d.bsdi_report_id, r.id = m.bsdi_report_id
        GROUP BY
          p.id
    SQL
  end

  def down
    execute "DROP VIEW master_search"
  end
end
