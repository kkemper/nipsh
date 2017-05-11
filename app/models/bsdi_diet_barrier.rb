class BsdiDietBarrier < ActiveRecord::Base
  belongs_to :bsdi_report

    private

  def self.ransackable_attributes(auth_object = nil)
    %w( bsdi_rfc_diet bsdi_diet_barrier_unfamililar bsdi_diet_barrier_time bsdi_diet_barrier_people bsdi_diet_barrier_taste bsdi_diet_barrier_other bsdi_diet_barrier_expense) + _ransackers.keys
  end
end
