class OhmImmune < ActiveRecord::Base

    private

  def self.ransackable_attributes(auth_object = nil)
    %w(ohm_immune_type ohm_immune_note) + _ransackers.keys
  end
end
