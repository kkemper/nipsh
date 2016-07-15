class CreateCancerScreenings < ActiveRecord::Migration
  def change
    create_table :cancer_screenings do |t|
      t.string :report_id
      t.integer :psa
      t.integer :dre
      t.integer :fob
      t.integer :colonoscopy
      t.integer :pap_smear
      t.integer :breast_exam
      t.integer :mammogram
      t.integer :skin
      t.integer :testicular
      t.date :exam_date
      t.string :created_at
      t.string :updated_at

      t.timestamps null: false
    end
  end
end
