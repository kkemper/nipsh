class BsdiRisk < ActiveRecord::Base
  belongs_to :bsdi_report

    private

  def self.ransackable_attributes(auth_object = nil)
    %w(bsdi_risk_stratification bsdi_risk_factor_count bsdi_self_rating) + _ransackers.keys
  end
end
