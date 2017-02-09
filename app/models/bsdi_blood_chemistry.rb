class BsdiBloodChemistry < ActiveRecord::Base
  belongs_to :bsdi_report

  private

  def self.ransackable_attributes(auth_object = nil)
  %w(bsdi_cholesterol bsdi_hdl bsdi_ldl bsdi_triglycerides bsdi_glucose) + _ransackers.keys
  end
end
