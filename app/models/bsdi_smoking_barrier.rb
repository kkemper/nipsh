class BsdiSmokingBarrier < ActiveRecord::Base
  belongs_to :bsdi_report

    private

  def self.ransackable_attributes(auth_object = nil)
    %w(bsdi_rfc_smoking bsdi_smoke_barrier_knowledge bsdi_smoke_barrier_temptation bsdi_smoke_barrier_friends bsdi_smoke_barrier_weight bsdi_smoke_barrier_stress bsdi_smoke_barrier_other) + _ransackers.keys
  end
end
