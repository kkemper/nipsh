class PsychDemographic < ActiveRecord::Base
  belongs_to :psych_report

    private

  def self.ransackable_attributes(auth_object = nil)
    %w(gender age ethnicity) + _ransackers.keys
  end
end
