class PsychBackgroundsController < InheritedResources::Base

  private

    def psych_background_params
      params.require(:psych_background).permit(:research_id, :hgh_sch_susp, :college_degree, :yrs_military_service, :dscpln_military, :fired, :yrs_fired, :wrk_suspensions, :yrs_wrk_suspension, :write_work, :yrs_write_up_wrk, :times_married, :times_divorced, :arrests, :yrs_arrest, :alcohol_drug_related_arrests, :drv_suspensions, :yrs_lic_susp, :sex_with_minor, :yrs_minor, :times_paying_for_sex, :yrs_paid_sex, :bankruptcies, :last_bankruptcy, :currnt_rx_meds, :mh_hosptlztions, :last_mh_hosptlztion, :self_harm, :last_sh, :current_psych_meds, :psych_meds_lifetime, :mh_dxs, :last_dx, :mood_do, :anx_do, :adhd, :longest_period_dep, :dep_episodes, :yrs_since_mst_recnt_dep_episd, :illegal_drugs_used, :last_illegal_drug_use, :marijuana_use, :last_marijuana_use, :drink_per_week, :drinks_setting, :intox_month, :intox_year, :last_intox, :intox_year, :times_intox_driving, :last_intox_driving, :drnks_effcts, :fights_drinking, :fights_adult, :last_fight, :stole, :last_stolen, :drinks_per_week)
    end
end

