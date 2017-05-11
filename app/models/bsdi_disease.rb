class BsdiDisease < ActiveRecord::Base
  belongs_to :bsdi_report

    private

  def self.ransackable_attributes(auth_object = nil)
    %w(bsdi_has_disease bsdi_heart_disease bsdi_hypertension bsdi_diabetes bsdi_diabetes_type1 bsdi_metabolic bsdi_cancer bsdi_auto_immune bsdi_asthma bsdi_pulmonary bsdi_arthritis bsdi_allergies bsdi_digestive bsdi_mental bsdi_neck_pain bsdi_back_pain bsdi_respiratory bsdi_migraines_headaches bsdi_depression bsdi_anxiety bsdi_musculoskeletal_problems bsdi_periphvasc bsdi_seizures bsdi_stroke bsdi_pregnancy bsdi_chest_pain bsdi_leg_pain bsdi_dizziness bsdi_shortbreath bsdi_orthopnea bsdi_heart_flutter bsdi_heart_murmur bsdi_ankle_edema bsdi_heart_meds bsdi_family_chd bsdi_chd_risk) + _ransackers.keys
  end
end
