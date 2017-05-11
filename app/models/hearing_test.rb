class HearingTest < ActiveRecord::Base
	belongs_to :mds_report

    private

  def self.ransackable_attributes(auth_object = nil)
    %w(hearing_date left_500 right_500 left_1000 right_1000 left_2000 right_2000 left_3000 right_3000 left_4000 right_4000 left_6000 right_6000 left_8000 right_8000) + _ransackers.keys
  end
end
