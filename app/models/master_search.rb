class MasterSearch < ActiveRecord::Base
  include SpreadsheetArchitect

  self.primary_key = "id"

private

  def selransackable_attributes(auth_object = nil)
  %w(id date_of_birth bsdi_cholesterol bsdi_hdl bsdi_ldl bsdi_triglycerides bsdi_glucose bsdi_diastolic bsdi_systolic bsdi_smoking_status bsdi_family_stroke bsdi_family_cancer bsdi_family_diabetes bsdi_family_cholesterol bsdi_family_hypertension bsdi_family_heart_only bsdi_has_disease bsdi_heart_disease bsdi_hypertension bsdi_diabetes bsdi_diabetes_type1 bsdi_metabolic bsdi_cancer bsdi_auto_immune bsdi_asthma bsdi_pulmonary bsdi_arthritis bsdi_allergies bsdi_digestive bsdi_mental bsdi_neck_pain bsdi_back_pain bsdi_respiratory bsdi_migraines_headaches bsdi_depression bsdi_anxiety bsdi_musculoskeletal_problems bsdi_periphvasc bsdi_seizures bsdi_stroke bsdi_pregnancy bsdi_chest_pain bsdi_leg_pain bsdi_dizziness bsdi_shortbreath bsdi_orthopnea bsdi_heart_flutter bsdi_heart_murmur bsdi_ankle_edema bsdi_heart_meds bsdi_family_chd bsdi_chd_risk) + _ransackerkeys
  end
end