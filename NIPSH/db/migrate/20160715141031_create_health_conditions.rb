class CreateHealthConditions < ActiveRecord::Migration
  def change
    create_table :health_conditions do |t|
      t.string :report_id
      t.boolean :diabetes
      t.boolean :diabetes_ty
      t.boolean :diabetes_current
      t.boolean :diabetes_medication
      t.boolean :hypertension
      t.boolean :hypertension_ty
      t.boolean :hypertension_current
      t.boolean :hypertension_medication
      t.boolean :hyperlipidemia
      t.boolean :hyperlipidemia_ty
      t.boolean :hyperlipidemia_current
      t.boolean :hyperlipidemia_medication
      t.boolean :cancer
      t.boolean :cancer_ty
      t.boolean :cancer_current
      t.boolean :cancer_medication
      t.boolean :heart_disease
      t.boolean :heart_disease_ty
      t.boolean :heart_disease_current
      t.boolean :heart_disease_medication
      t.boolean :resp_disease
      t.boolean :resp_disease_ty
      t.boolean :resp_disease_current
      t.boolean :resp_disease_medication
      t.boolean :gastro_disease
      t.boolean :gastro_disease_ty
      t.boolean :gastro_disease_current
      t.boolean :gastro_disease_medication
      t.boolean :repro_health
      t.boolean :repro_health_ty
      t.boolean :repro_health_current
      t.boolean :repro_health_medication
      t.boolean :neuro_disease
      t.boolean :neuro_disease_ty
      t.boolean :neuro_disease_current
      t.boolean :neuro_disease_medication
      t.boolean :hepatitis
      t.boolean :hepatitis_ty
      t.boolean :hepatitis_current
      t.boolean :hepatitis_medication
      t.boolean :psych
      t.boolean :psych_ty
      t.boolean :psych_current
      t.boolean :psych_medication
      t.boolean :shoulder
      t.boolean :shoulder_ty
      t.boolean :shoulder_current
      t.boolean :shoulder_medication
      t.boolean :knee
      t.boolean :knee_ty
      t.boolean :knee_current
      t.boolean :knee_medication
      t.boolean :back
      t.boolean :back_ty
      t.boolean :back_current
      t.boolean :back_medication
      t.boolean :arthritis
      t.boolean :arthritis_ty
      t.boolean :arthritis_current
      t.boolean :arthritis_medication
      t.string :other_text
      t.boolean :other_ty
      t.boolean :other_current
      t.boolean :other_medication
      t.string :created_at
      t.string :updated_at
      
      t.timestamps null: false
    end
  end
end
