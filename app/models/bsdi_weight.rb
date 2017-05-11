class BsdiWeight < ActiveRecord::Base
  belongs_to :bsdi_report

    private

  def self.ransackable_attributes(auth_object = nil)
    %w(rfc_weight bsdi_weight_barrier_knowledge bsdi_weight_barrier_access bsdi_weight_barrier_social bsdi_weight_barrier_exercise bsdi_weight_barrier_stress) + _ransackers.keys
  end
end
