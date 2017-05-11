class OhmHearing < ActiveRecord::Base

    private

  def self.ransackable_attributes(auth_object = nil)
    %w( ohm_l500k ohm_r500k ohm_l1k ohm_r1k ohm_l2k ohm_r2k ohm_l3k ohm_r3k ohm_l4k ohm_r4k ohm_l6k ohm_r6k ohm_l8k ohm_r8k) + _ransackers.keys
  end
end
