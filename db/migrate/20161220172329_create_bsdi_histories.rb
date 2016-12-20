class CreateBsdiHistories < ActiveRecord::Migration
  def change
    create_table :bsdi_histories do |t|
      t.string :bsdi_report_id
      t.integer :bsdi_family_stroke
      t.integer :bsdi_family_cancer
      t.integer :bsdi_family_diabetes
      t.integer :bsdi_family_cholesterol
      t.integer :bsdi_family_hypertension
      t.binary :bsdi_family_heart_only

      t.timestamps null: false
    end
  end
end
