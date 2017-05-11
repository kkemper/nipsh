class OhmCbc < ActiveRecord::Base

    private

  def self.ransackable_attributes(auth_object = nil)
    %w(ohm_wbc ohm_hemo ohm_hema) + _ransackers.keys
  end
end
