class CreateBsdiBloodPressures < ActiveRecord::Migration
  def change
    create_table :bsdi_blood_pressures do |t|
      t.string :bsdi_report_id
      t.integer :bsdi_systolic
      t.integer :bsdi_diastolic
      t.binary :bsdi_bp_medicine

      t.timestamps null: false
    end
  end
end
