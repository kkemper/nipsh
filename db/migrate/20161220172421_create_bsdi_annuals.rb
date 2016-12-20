class CreateBsdiAnnuals < ActiveRecord::Migration
  def change
    create_table :bsdi_annuals do |t|
      t.string :bsdi_report_id
      t.integer :bsdi_see_doctor
      t.integer :bsdi_see_dentist
      t.integer :bsdi_check_bp
      t.integer :bsdi_check_chol
      t.integer :bsdi_colonoscopy
      t.integer :bsdi_papsmear
      t.integer :bsdi_mammogram
      t.integer :bsdi_prostate
      t.integer :bsdi_breast_exam
      t.integer :bsdi_testicular_exam
      t.integer :bsdi_flu_shot
      t.integer :bsdi_physician_visits
      t.integer :bsdi_hospital_visits
      t.integer :bsdi_emergency_room
      t.integer :bsdi_high_absenteeism
      t.integer :bsdi_seat_belt

      t.timestamps null: false
    end
  end
end
