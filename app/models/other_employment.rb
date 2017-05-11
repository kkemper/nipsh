class OtherEmployment < ActiveRecord::Base
	belongs_to :mds_report

    private

  def self.ransackable_attributes(auth_object = nil)
    %w(construction_years other_ml_years retail_years lawn_years admin_years manf_years healthcare_years other_years) + _ransackers.keys
  end
end
