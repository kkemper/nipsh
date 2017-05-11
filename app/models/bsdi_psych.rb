class BsdiPsych < ActiveRecord::Base
  belongs_to :bsdi_report

    private

  def self.ransackable_attributes(auth_object = nil)
    %w(bsdi_psych_overall bsdi_life_satisfaction bsdi_satisfaction_job bsdi_stress_level bsdi_psych_stress_effect bsdi_sleep bsdi_insufficient_sleep bsdi_friends bsdi_social_ties bsdi_spirit_health) + _ransackers.keys
  end
end
