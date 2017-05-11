class InjuryIllness < ActiveRecord::Base
	belongs_to :mds_report

    private

  def self.ransackable_attributes(auth_object = nil)
    %w(non_work_sick_days injury_related_days alternative_duty lt_alternative_duty) + _ransackers.keys
  end
end
