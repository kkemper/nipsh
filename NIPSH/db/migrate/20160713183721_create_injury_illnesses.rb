class CreateInjuryIllnesses < ActiveRecord::Migration
  def change
    create_table :injury_illnesses do |t|
      t.string :report_id
      t.integer :non_work_sick_days
      t.integer :injury_related_days
      t.integer :alternative_duty
      t.boolean :lt_alternative_duty
      t.string :created_at
      t.string :updated_at

      t.timestamps null: false
    end
  end
end
