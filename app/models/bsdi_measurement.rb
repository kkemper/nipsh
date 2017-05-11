class BsdiMeasurement < ActiveRecord::Base
  belongs_to :bsdi_report

    private

  def self.ransackable_attributes(auth_object = nil)
    %w(bsdi_weight bsdi_height bsdi_waist bsdi_waist_risk bsdi_hips bsdi_weight_belief bsdi_bmi bsdi_bmi_category bsdi_high_risk_bmi bsdi_hypertrophic bsdi_disabled ) + _ransackers.keys
  end
end
