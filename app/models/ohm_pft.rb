class OhmPft < ActiveRecord::Base

    private

  def self.ransackable_attributes(auth_object = nil)
    %w(ohm_height ohm_weight ohm_bp ohm_fvc ohm_fev1 ohm_fev1fvc ohm_fvcpr ohm_fev1pr) + _ransackers.keys
  end
end
