class CreateFitnessTestTests < ActiveRecord::Migration
  def change
    create_table :fitness_test_tests do |t|
      t.string :fitness_report_id
      t.integer :fitness_age
      t.float :fitness_ht
      t.float :fitness_wt
      t.float :fitness_bia_stnd
      t.float :fitness_bia_ath
      t.string :fitness_bia_p_f
      t.float :fitness_bmi
      t.float :fitness_tbw
      t.float :fitness_skinfold
      t.string :fitness_skn_p_f
      t.float :fitness_bodpod
      t.string :fitness_bod_p_f
      t.float :fitness_accuflex
      t.string :fitness_flex_p_fl
      t.float :fitness_grip_l
      t.float :fitness_grip_r
      t.float :fitness_leg_press
      t.float :fitness_arm_curl
      t.integer :fitness_push_ups
      t.integer :fitness_crunches
      t.integer :fitness_q_1
      t.integer :fitness_q_2
      t.integer :fitness_q_3
      t.integer :fitness_q_4
      t.integer :fitness_rest_hr
      t.integer :fitness_rest_sbp
      t.integer :fitness_rest_dbp
      t.integer :fitness_rest_ecg
      t.integer :fitness_rest_bp
      t.integer :fitness_max_hr
      t.integer :fitness_max_sbp
      t.integer :fitness_max_dbp
      t.integer :fitness_percent_max_hr
      t.float :fitness_max_mets
      t.float :fitness_max_rpe
      t.float :fitness_max_vo2
      t.string :fitness_vo2_pass_fail
      t.binary :fitness_swat
      t.binary :fitness_scuba
      t.binary :fitness_hazmat
      t.binary :fitness_canine
      t.binary :fitness_taskforce
      t.binary :fitness_reserve
      t.binary :fitness_merit
      t.binary :fitness_envir_oficr
      t.binary :fitness_recheck
      t.binary :fitness_ex_rx_offered
      t.binary :fitness_rx_accepted
      t.binary :fitness_termination
      t.integer :fitness_bp_response
      t.integer :fitness_impression
      t.binary :fitness_ref_letter
      t.binary :fitness_overread
      t.binary :fitness_ectopy
      t.binary :fitness_pvcs
      t.binary :fitness_rtw
      t.binary :fitness_promo
      t.binary :fitness_arrestee
      t.binary :fitness_jco
      t.string :fitness_social_sec_num
      t.float :fitness_hip
      t.float :fitness_waist
      t.binary :fitness_rx_required
      t.integer :fitness_plank
      t.integer :fitness_test_type
      t.date :fitness_class_start_date
      t.integer :fitness_pre_or_post
      t.integer :fitness_fms
      t.binary :fitness_wfi_incentive

      t.timestamps null: false
    end
  end
end
