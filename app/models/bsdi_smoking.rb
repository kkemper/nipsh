class BsdiSmoking < ActiveRecord::Base
  belongs_to :bsdi_report

  private

def self.ransackable_attributes(auth_object = nil)
  %w(bsdi_smoking_status) + _ransackers.keys
end
end
