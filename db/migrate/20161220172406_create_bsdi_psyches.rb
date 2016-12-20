class CreateBsdiPsyches < ActiveRecord::Migration
  def change
    create_table :bsdi_psyches do |t|
      t.string :bsdi_report_id
      t.integer :bsdi_psych_overall
      t.integer :bsdi_life_satisfaction
      t.integer :bsdi_satisfaction_job
      t.integer :bsdi_stress_level
      t.integer :bsdi_psych_stress_effect
      t.integer :bsdi_sleep
      t.integer :bsdi_insufficient_sleep
      t.integer :bsdi_friends
      t.integer :bsdi_social_ties
      t.integer :bsdi_spirit_health

      t.timestamps null: false
    end
  end
end
