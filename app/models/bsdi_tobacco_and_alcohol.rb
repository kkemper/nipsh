class BsdiTobaccoAndAlcohol < ActiveRecord::Base
  belongs_to :bsdi_report

    private

  def self.ransackable_attributes(auth_object = nil)
    %w(bsdi_tobacco bsdi_alcohol bsdi_binge_drinking bsdi_medication_relax) + _ransackers.keys
  end
end
