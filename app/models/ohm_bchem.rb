class OhmBchem < ActiveRecord::Base


    private

  def self.ransackable_attributes(auth_object = nil)
    %w(ssn ohm_sgot ohm_sgpt ohm_trigly ohm_chol ohm_ldl ohm_ldh ohm_hdl ohm_glucose ohm_bun ohm_creatinine) + _ransackers.keys
  end
end
