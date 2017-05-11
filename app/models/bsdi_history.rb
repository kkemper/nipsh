class BsdiHistory < ActiveRecord::Base
  belongs_to :bsdi_report

    private

  def self.ransackable_attributes(auth_object = nil)
    %w(bsdi_family_stroke bsdi_family_cancer bsdi_family_diabetes bsdi_family_cholesterol bsdi_family_hypertension bsdi_family_heart_only) + _ransackers.keys
  end
end
