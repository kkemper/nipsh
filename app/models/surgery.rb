class Surgery < ActiveRecord::Base
	belongs_to :mds_report

    private

  def self.ransackable_attributes(auth_object = nil)
    %w(chest back neck shoulder leg) + _ransackers.keys
  end
end
