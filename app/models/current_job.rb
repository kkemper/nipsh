class CurrentJob < ActiveRecord::Base
	belongs_to :mds_report

    private

  def self.ransackable_attributes(auth_object = nil)
    %w(currently_emp current_duties volunteer volunteer_hours other_employment date_of_hire date_of_exit) + _ransackers.keys
  end
end
