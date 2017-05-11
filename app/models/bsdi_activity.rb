class BsdiActivity < ActiveRecord::Base
  belongs_to :bsdi_report

    private

  def self.ransackable_attributes(auth_object = nil)
    %w(bsdi_rfc_activity bsdi_active_barrier_time bsdi_active_barrier_people bsdi_active_barrier_unfamiliar bsdi_active_barrier_resources bsdi_active_barrier_unpleasant bsdi_active_barrier_medical_worry bsdi_active_barrier_intimidating bsdi_active_barrier_embarrassed bsdi_active_barrier_other bsdi_active_barrier_injury) + _ransackers.keys
  end
end
 