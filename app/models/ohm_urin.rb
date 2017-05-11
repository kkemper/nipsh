class OhmUrin < ActiveRecord::Base

    private

  def self.ransackable_attributes(auth_object = nil)
    %w(ohm_occblood ohm_uringlucose ohm_protein) + _ransackers.keys
  end
end
