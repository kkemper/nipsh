class CreateBsdiMeasurements < ActiveRecord::Migration
  def change
    create_table :bsdi_measurements do |t|
      t.float :bsdi_weight
      t.float :bsdi_height
      t.float :bsdi_waist
      t.binary :bsdi_waist_risk
      t.float :bsdi_hips
      t.integer :bsdi_weight_belief
      t.float :bsdi_bmi
      t.integer :bsdi_bmi_category
      t.binary :bsdi_high_risk_bmi
      t.binary :bsdi_hypertrophic
      t.binary :bsdi_disabled

      t.timestamps null: false
    end
  end
end
