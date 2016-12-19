class CreateBsdiExercises < ActiveRecord::Migration
  def change
    create_table :bsdi_exercises do |t|
      t.string :bsdi_report_id
      t.integer :bsdi_exercise
      t.integer :bsdi_how_long_active
      t.binary :bsdi_sedentary
      t.binary :bsdi_hip_knee_problems
      t.binary :bsdi_other_reason_no_exercise
      t.integer :bsdi_activity_minutes_vigorous
      t.integer :bsdi_activity_minutes_moderate
      t.binary :bsdi_physical_inactivity

      t.timestamps null: false
    end
  end
end
