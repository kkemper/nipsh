 class CreatePsychBackgrounds < ActiveRecord::Migration
  def change
    create_table :psych_backgrounds do |t|
      t.string :research_id
      t.integer :hgh_sch_susp
      t.string :college_degree
      t.integer :yrs_military_service
      t.boolean :dscpln_military
      t.boolean :fired
      t.integer :yrs_fired
      t.integer :wrk_suspensions
      t.integer :yrs_wrk_suspension
      t.integer :write_work
      t.integer :yrs_write_up_wrk
      t.integer :times_married
      t.integer :times_divorced
      t.integer :arrests
      t.integer :yrs_arrest
      t.integer :alcohol_drug_related_arrests
      t.integer :drv_suspensions
      t.integer :yrs_lic_susp
      t.boolean :sex_with_minor
      t.integer :yrs_minor
      t.integer :times_paying_for_sex
      t.integer :yrs_paid_sex
      t.integer :bankruptcies
      t.integer :last_bankruptcy
      t.integer :currnt_rx_meds
      t.integer :mh_hosptlztions
      t.integer :last_mh_hosptlztion
      t.boolean :self_harm
      t.integer :last_sh
      t.integer :current_psych_meds
      t.integer :psych_meds_lifetime
      t.integer :mh_dxs
      t.integer :last_dx
      t.boolean :mood_do
      t.boolean :anx_do
      t.boolean :adhd
      t.integer :longest_period_dep
      t.integer :dep_episodes
      t.integer :yrs_since_mst_recnt_dep_episd
      t.integer :illegal_drugs_used
      t.integer :last_illegal_drug_use
      t.integer :marijuana_use
      t.integer :last_marijuana_use
      t.integer :drink_per_week
      t.integer :drinks_setting
      t.integer :intox_month
      t.integer :intox_year
      t.integer :last_intox
      t.integer :intox_year
      t.integer :times_intox_driving
      t.integer :last_intox_driving
      t.integer :drnks_effcts
      t.boolean :fights_drinking
      t.integer :fights_adult
      t.integer :last_fight
      t.boolean :stole
      t.integer :last_stolen
      t.integer :drinks_per_week

      t.timestamps null: false
    end
  end
end
