class CreatePsychReports < ActiveRecord::Migration
  def change
    create_table :psych_reports do |t|
      t.string :research_id
      t.boolean :grade
      t.integer :examiner
      t.date :date_of_evaluation
      t.boolean :gave_consent

      t.timestamps null: false
    end
  end
end
