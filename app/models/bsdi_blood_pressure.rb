class BsdiBloodPressure < ActiveRecord::Base
  belongs_to :bsdi_report

  private

def self.ransackable_attributes(auth_object = nil)
  %w(bsdi_diastolic bsdi_systolic) + _ransackers.keys
end
end
