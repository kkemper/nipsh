class PsychReport < ActiveRecord::Base
  has_one :psych_background
  has_one :psych_calc
  has_one :psych_demographic
  has_one :psych_employment

    private

  def self.ransackable_attributes(auth_object = nil)
    %w(grade examiner date_of_evaluation gave_consent) + _ransackers.keys
  end
end
