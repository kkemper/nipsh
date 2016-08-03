class CreateFamilyHistories < ActiveRecord::Migration
  def change
    create_table :family_histories do |t|
      t.string :report_id
      t.boolean :male_heart_disease
  	  t.boolean :female_heart_disease
  	  t.boolean :male_alcohol
  	  t.boolean :female_alcohol
  	  t.boolean :male_hypertension
  	  t.boolean :female_hypertension
  	  t.string :created_at
  	  t.string :created_at

      t.timestamps null: false
    end
  end
end
