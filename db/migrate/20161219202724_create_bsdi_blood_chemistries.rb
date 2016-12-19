class CreateBsdiBloodChemistries < ActiveRecord::Migration
  def change
    create_table :bsdi_blood_chemistries do |t|
      t.string :bsdi_report_id
      t.date :bsdi_bchem_date
      t.integer :bsdi_cholesterol
      t.binary :bsdi_high_cholesterol
      t.binary :bsdi_cholesterol_meds
      t.integer :bsdi_hdl
      t.integer :bsdi_hdl_status
      t.integer :bsdi_ldl
      t.binary :bsdi_high_ldl
      t.integer :bsdi_triglycerides
      t.binary :bsdi_high_triglyceride
      t.integer :bsdi_glucose
      t.binary :bsdi_pre_diabetes
      t.integer :bsdi_a1c
      t.binary :bsdi_blood_chem_risk

      t.timestamps null: false
    end
  end
end
