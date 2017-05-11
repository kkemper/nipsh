class PhysicalActivity < ActiveRecord::Base
	belongs_to :mds_report

    private

  def self.ransackable_attributes(auth_object = nil)
    %w(thirty_min cardio muscle sweat everyday) + _ransackers.keys
  end
end
