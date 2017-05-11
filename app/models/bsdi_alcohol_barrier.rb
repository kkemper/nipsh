class BsdiAlcoholBarrier < ActiveRecord::Base
  belongs_to :bsdi_report

    private

  def self.ransackable_attributes(auth_object = nil)
    %w(bsdi_rfc_alcohol bsdi_alcohol_barrier_knowledge bsdi_alcohol_barrier_temptation bsdi_alcohol_barrier_friends bsdi_alcohol_barrier_perception bsdi_alcohol_barrier_stress bsdi_alcohol_barrier_other) + _ransackers.keys
  end
end
