class CreateBsdiReports < ActiveRecord::Migration
  def change
    create_table :bsdi_reports do |t|
      t.string :bsdi_patient_id
      t.date :bsdi_date
      t.binary :bsdi_newest
      t.integer :bsdi_valid_year
      t.binary :bsdi_user_defined_flag
      t.binary :bsdi_staff_entry

      t.timestamps null: false
    end
  end
end
