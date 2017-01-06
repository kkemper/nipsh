class CreateFitnessReports < ActiveRecord::Migration
  def change
    create_table :fitness_reports do |t|
      t.string :fitness_report_id
      t.string :fitness_patient_id
      t.date :fitness_test_date

      t.timestamps null: false
    end
  end
end
