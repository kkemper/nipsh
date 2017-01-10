class FitnessTestTestsController < InheritedResources::Base

  private

    def fitness_test_test_params
      params.require(:fitness_test_test).permit(:fitness_report_id, :fitness_age, :fitness_ht, :fitness_wt, :fitness_bia-stnd, :fitness_bia-ath, :fitness_bia-p-f, :fitness_bmi, :fitness_tbw, :fitness_skinfold, :fitness_skn-p-f, :fitness_bodpod, :fitness_bod-p-f, :fitness_accuflex, :fitness_flex-p-fl, :fitness_grip-l, :fitness_grip-r, :fitness_leg_press, :fitness_arm_curl, :fitness_push_ups, :fitness_crunches, :fitness_q-1, :fitness_q-2, :fitness_q-3, :fitness_q-4, :fitness_rest_hr, :fitness_rest_sbp, :fitness_rest_dbp, :fitness_rest_ecg, :fitness_rest_bp, :fitness_max_hr, :fitness_max_sbp, :fitness_max_dbp, :fitness_percent_max_hr, :fitness_max_mets, :fitness_max_rpe, :fitness_max_vo2, :fitness_vo2-pass-fail, :fitness_swat, :fitness_scuba, :fitness_hazmat, :fitness_canine, :fitness_taskforce, :fitness_reserve, :fitness_merit, :fitness_envir-oficr, :fitness_recheck, :fitness_ex_rx_offered, :fitness_rx_accepted, :fitness_termination, :fitness_bp_response, :fitness_impression, :fitness_ref_letter, :fitness_overread, :fitness_ectopy, :fitness_pvcs, :fitness_rtw, :fitness_promo, :fitness_arrestee, :fitness_jco, :fitness_social_sec_num, :fitness_hip, :fitness_waist, :fitness_rx_required, :fitness_plank, :fitness_test_type, :fitness_class_start_date, :fitness_pre_or_post, :fitness_fms, :fitness_wfi_incentive)
    end
end

