class CreateLabData < ActiveRecord::Migration
  def change
    create_table :lab_data do |t|
      t.string :patient_id
      t.date :lab_date
      t.integer :wbc_count
      t.integer :hemoglobin
      t.integer :hematocrit
      t.integer :sgot_ast
      t.integer :sgpt_alt
      t.integer :triglyceride
      t.integer :cholesterol
      t.integer :ldl
      t.integer :hdl
      t.integer :glucose
      t.integer :bun
      t.integer :creatinine
      t.integer :urine_blood
      t.integer :urine_glucose
      t.integer :urine_protein
      t.string :created_at
      t.string :updated_at

      t.timestamps null: false
    end
  end
end
