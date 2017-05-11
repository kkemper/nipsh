class Duty < ActiveRecord::Base
	belongs_to :mds_report

    private

  def self.ransackable_attributes(auth_object = nil)
    %w( fire_suppression_years ems_years mgmt_years) + _ransackers.keys
  end
end
