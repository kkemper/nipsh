class CreateBsdiDiseases < ActiveRecord::Migration
  def change
    create_table :bsdi_diseases do |t|
      t.string :bsdi_report_id
      t.binary :bsdi_has_disease
      t.binary :bsdi_heart_disease
      t.binary :bsdi_hypertension
      t.binary :bsdi_diabetes
      t.binary :bsdi_diabetes_type1
      t.binary :bsdi_metabolic
      t.binary :bsdi_cancer
      t.binary :bsdi_auto_immune
      t.binary :bsdi_asthma
      t.binary :bsdi_pulmonary
      t.binary :bsdi_arthritis
      t.binary :bsdi_allergies
      t.binary :bsdi_digestive
      t.binary :bsdi_mental
      t.binary :bsdi_neck_pain
      t.binary :bsdi_back_pain
      t.binary :bsdi_respiratory
      t.binary :bsdi_migraines_headaches
      t.binary :bsdi_depression
      t.binary :bsdi_anxiety
      t.binary :bsdi_musculoskeletal_problems
      t.binary :bsdi_periphvasc
      t.binary :bsdi_seizures
      t.binary :bsdi_stroke
      t.binary :bsdi_pregnancy
      t.binary :bsdi_chest_pain
      t.binary :bsdi_leg_pain
      t.binary :bsdi_dizziness
      t.binary :bsdi_shortbreath
      t.binary :bsdi_orthopnea
      t.binary :bsdi_heart_flutter
      t.binary :bsdi_heart_murmur
      t.binary :bsdi_ankle_edema
      t.binary :bsdi_heart_meds
      t.integer :bsdi_family_chd
      t.binary :bsdi_chd_risk

      t.timestamps null: false
    end
  end
end
