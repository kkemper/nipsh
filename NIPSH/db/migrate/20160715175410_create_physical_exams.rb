class CreatePhysicalExams < ActiveRecord::Migration
  def change
    create_table :physical_exams do |t|
      t.string :patient_id
      t.date :exam_date
      t.integer :systolic
      t.integer :diastolic
      t.integer :pulse
      t.float :weight
      t.float :height
      t.float :hip
      t.float :waist
      t.integer :body_comp_method
      t.float :body_fat
      t.float :fvc
      t.float :fev1
      t.float :fev1_fvc
      t.string :created_at
      t.string :updated_at

      t.timestamps null: false
    end
  end
end
